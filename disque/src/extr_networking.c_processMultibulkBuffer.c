
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {long long multibulklen; scalar_t__ argc; char* querybuf; int bulklen; int * argv; } ;
typedef TYPE_1__ client ;


 int C_ERR ;
 int C_OK ;
 int OBJ_STRING ;
 int PROTO_INLINE_MAX_SIZE ;
 long long PROTO_MBULK_BIG_ARG ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyErrorFormat (TYPE_1__*,char*,char) ;
 int createObject (int ,char*) ;
 int createStringObject (char*,int) ;
 int sdsIncrLen (char*,int) ;
 void* sdsMakeRoomFor (char*,int) ;
 char* sdsempty () ;
 int sdslen (char*) ;
 int sdsrange (char*,int,int) ;
 int serverAssertWithInfo (TYPE_1__*,int *,int) ;
 int setProtocolError (TYPE_1__*,int) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;
 int zfree (int *) ;
 int * zmalloc (int) ;

int processMultibulkBuffer(client *c) {
    char *newline = ((void*)0);
    int pos = 0, ok;
    long long ll;

    if (c->multibulklen == 0) {

        serverAssertWithInfo(c,((void*)0),c->argc == 0);


        newline = strchr(c->querybuf,'\r');
        if (newline == ((void*)0)) {
            if (sdslen(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
                addReplyError(c,"Protocol error: too big mbulk count string");
                setProtocolError(c,0);
            }
            return C_ERR;
        }


        if (newline-(c->querybuf) > ((signed)sdslen(c->querybuf)-2))
            return C_ERR;



        serverAssertWithInfo(c,((void*)0),c->querybuf[0] == '*');
        ok = string2ll(c->querybuf+1,newline-(c->querybuf+1),&ll);
        if (!ok || ll > 1024*1024) {
            addReplyError(c,"Protocol error: invalid multibulk length");
            setProtocolError(c,pos);
            return C_ERR;
        }

        pos = (newline-c->querybuf)+2;
        if (ll <= 0) {
            sdsrange(c->querybuf,pos,-1);
            return C_OK;
        }

        c->multibulklen = ll;


        if (c->argv) zfree(c->argv);
        c->argv = zmalloc(sizeof(robj*)*c->multibulklen);
    }

    serverAssertWithInfo(c,((void*)0),c->multibulklen > 0);
    while(c->multibulklen) {

        if (c->bulklen == -1) {
            newline = strchr(c->querybuf+pos,'\r');
            if (newline == ((void*)0)) {
                if (sdslen(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
                    addReplyError(c,
                        "Protocol error: too big bulk count string");
                    setProtocolError(c,0);
                    return C_ERR;
                }
                break;
            }


            if (newline-(c->querybuf) > ((signed)sdslen(c->querybuf)-2))
                break;

            if (c->querybuf[pos] != '$') {
                addReplyErrorFormat(c,
                    "Protocol error: expected '$', got '%c'",
                    c->querybuf[pos]);
                setProtocolError(c,pos);
                return C_ERR;
            }

            ok = string2ll(c->querybuf+pos+1,newline-(c->querybuf+pos+1),&ll);
            if (!ok || ll < 0 || ll > 512*1024*1024) {
                addReplyError(c,"Protocol error: invalid bulk length");
                setProtocolError(c,pos);
                return C_ERR;
            }

            pos += newline-(c->querybuf+pos)+2;
            if (ll >= PROTO_MBULK_BIG_ARG) {
                size_t qblen;





                sdsrange(c->querybuf,pos,-1);
                pos = 0;
                qblen = sdslen(c->querybuf);


                if (qblen < (size_t)ll+2)
                    c->querybuf = sdsMakeRoomFor(c->querybuf,ll+2-qblen);
            }
            c->bulklen = ll;
        }


        if (sdslen(c->querybuf)-pos < (unsigned)(c->bulklen+2)) {

            break;
        } else {



            if (pos == 0 &&
                c->bulklen >= PROTO_MBULK_BIG_ARG &&
                (signed) sdslen(c->querybuf) == c->bulklen+2)
            {
                c->argv[c->argc++] = createObject(OBJ_STRING,c->querybuf);
                sdsIncrLen(c->querybuf,-2);
                c->querybuf = sdsempty();


                c->querybuf = sdsMakeRoomFor(c->querybuf,c->bulklen+2);
                pos = 0;
            } else {
                c->argv[c->argc++] =
                    createStringObject(c->querybuf+pos,c->bulklen);
                pos += c->bulklen+2;
            }
            c->bulklen = -1;
            c->multibulklen--;
        }
    }


    if (pos) sdsrange(c->querybuf,pos,-1);


    if (c->multibulklen == 0) return C_OK;


    return C_ERR;
}
