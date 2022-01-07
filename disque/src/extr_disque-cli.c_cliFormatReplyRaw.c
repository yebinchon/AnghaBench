
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_4__ {int type; char* str; int len; size_t elements; struct TYPE_4__** element; int integer; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_5__ {int mb_delim; } ;
 TYPE_2__ config ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 char* sdscat (char*,int ) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdscatprintf (char*,char*,int ) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 int stderr ;

__attribute__((used)) static sds cliFormatReplyRaw(redisReply *r) {
    sds out = sdsempty(), tmp;
    size_t i;

    switch (r->type) {
    case 130:

        break;
    case 132:
        out = sdscatlen(out,r->str,r->len);
        out = sdscatlen(out,"\n",1);
        break;
    case 129:
    case 128:
        out = sdscatlen(out,r->str,r->len);
        break;
    case 131:
        out = sdscatprintf(out,"%lld",r->integer);
        break;
    case 133:
        for (i = 0; i < r->elements; i++) {
            if (i > 0) out = sdscat(out,config.mb_delim);
            tmp = cliFormatReplyRaw(r->element[i]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            sdsfree(tmp);
        }
        break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
