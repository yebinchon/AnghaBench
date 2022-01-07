
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {int type; unsigned int elements; struct TYPE_3__** element; int len; int str; int integer; } ;
typedef TYPE_1__ redisReply ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int sdscat (int ,char*) ;
 int sdscatlen (int ,int ,int ) ;
 int sdscatprintf (int ,char*,int ) ;
 int sdscatrepr (int ,int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int stderr ;
 int strlen (int ) ;

__attribute__((used)) static sds cliFormatReplyCSV(redisReply *r) {
    unsigned int i;

    sds out = sdsempty();
    switch (r->type) {
    case 132:
        out = sdscat(out,"ERROR,");
        out = sdscatrepr(out,r->str,strlen(r->str));
    break;
    case 129:
        out = sdscatrepr(out,r->str,r->len);
    break;
    case 131:
        out = sdscatprintf(out,"%lld",r->integer);
    break;
    case 128:
        out = sdscatrepr(out,r->str,r->len);
    break;
    case 130:
        out = sdscat(out,"NIL\n");
    break;
    case 133:
        for (i = 0; i < r->elements; i++) {
            sds tmp = cliFormatReplyCSV(r->element[i]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            if (i != r->elements-1) out = sdscat(out,",");
            sdsfree(tmp);
        }
    break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
