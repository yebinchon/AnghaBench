
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char* sds ;
typedef int robj ;
struct TYPE_5__ {char* querybuf; char** argv; size_t argc; } ;
typedef TYPE_1__ client ;


 int C_ERR ;
 int C_OK ;
 int OBJ_STRING ;
 scalar_t__ PROTO_INLINE_MAX_SIZE ;
 int addReplyError (TYPE_1__*,char*) ;
 char* createObject (int ,char*) ;
 int sdsfree (char*) ;
 scalar_t__ sdslen (char*) ;
 char* sdsnewlen (char*,size_t) ;
 int sdsrange (char*,size_t,int) ;
 char** sdssplitargs (char*,int*) ;
 int setProtocolError (TYPE_1__*,int ) ;
 char* strchr (char*,char) ;
 int zfree (char**) ;
 char** zmalloc (int) ;

int processInlineBuffer(client *c) {
    char *newline;
    int argc, j;
    sds *argv, aux;
    size_t querylen;


    newline = strchr(c->querybuf,'\n');


    if (newline == ((void*)0)) {
        if (sdslen(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
            addReplyError(c,"Protocol error: too big inline request");
            setProtocolError(c,0);
        }
        return C_ERR;
    }


    if (newline && newline != c->querybuf && *(newline-1) == '\r')
        newline--;


    querylen = newline-(c->querybuf);
    aux = sdsnewlen(c->querybuf,querylen);
    argv = sdssplitargs(aux,&argc);
    sdsfree(aux);
    if (argv == ((void*)0)) {
        addReplyError(c,"Protocol error: unbalanced quotes in request");
        setProtocolError(c,0);
        return C_ERR;
    }


    sdsrange(c->querybuf,querylen+2,-1);


    if (c->argv) zfree(c->argv);
    c->argv = zmalloc(sizeof(robj*)*argc);


    for (c->argc = 0, j = 0; j < argc; j++) {
        if (sdslen(argv[j])) {
            c->argv[c->argc] = createObject(OBJ_STRING,argv[j]);
            c->argc++;
        } else {
            sdsfree(argv[j]);
        }
    }
    zfree(argv);
    return C_OK;
}
