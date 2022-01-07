
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_3__ {int type; char* str; unsigned int elements; struct TYPE_3__** element; int len; int integer; } ;
typedef TYPE_1__ redisReply ;
typedef int _prefixfmt ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int memset (char*,char,unsigned int) ;
 char* sdscat (char*,char*) ;
 char* sdscatlen (char*,char*,int ) ;
 char* sdscatprintf (char*,char*,char*,...) ;
 char* sdscatrepr (char*,char*,int ) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnew (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int stderr ;

__attribute__((used)) static sds cliFormatReplyTTY(redisReply *r, char *prefix) {
    sds out = sdsempty();
    switch (r->type) {
    case 132:
        out = sdscatprintf(out,"(error) %s\n", r->str);
    break;
    case 129:
        out = sdscat(out,r->str);
        out = sdscat(out,"\n");
    break;
    case 131:
        out = sdscatprintf(out,"(integer) %lld\n",r->integer);
    break;
    case 128:


        out = sdscatrepr(out,r->str,r->len);
        out = sdscat(out,"\n");
    break;
    case 130:
        out = sdscat(out,"(nil)\n");
    break;
    case 133:
        if (r->elements == 0) {
            out = sdscat(out,"(empty list or set)\n");
        } else {
            unsigned int i, idxlen = 0;
            char _prefixlen[16];
            char _prefixfmt[16];
            sds _prefix;
            sds tmp;


            i = r->elements;
            do {
                idxlen++;
                i /= 10;
            } while(i);


            memset(_prefixlen,' ',idxlen+2);
            _prefixlen[idxlen+2] = '\0';
            _prefix = sdscat(sdsnew(prefix),_prefixlen);


            snprintf(_prefixfmt,sizeof(_prefixfmt),"%%s%%%ud) ",idxlen);

            for (i = 0; i < r->elements; i++) {


                out = sdscatprintf(out,_prefixfmt,i == 0 ? "" : prefix,i+1);


                tmp = cliFormatReplyTTY(r->element[i],_prefix);
                out = sdscatlen(out,tmp,sdslen(tmp));
                sdsfree(tmp);
            }
            sdsfree(_prefix);
        }
    break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
