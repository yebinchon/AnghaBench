
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sds ;
struct TYPE_10__ {scalar_t__ type; int elements; TYPE_1__** element; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_4__ redisContext ;
typedef int redisCallback ;
struct TYPE_9__ {int invalid; int * channels; int * patterns; } ;
struct TYPE_12__ {TYPE_2__ sub; TYPE_4__ c; } ;
typedef TYPE_5__ redisAsyncContext ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_8__ {scalar_t__ type; char* str; scalar_t__ integer; int len; } ;


 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 scalar_t__ REDIS_REPLY_STRING ;
 int REDIS_SUBSCRIBED ;
 int __redisShiftCallback (int *,int *) ;
 int assert (int) ;
 int dictDelete (int *,int ) ;
 int * dictFind (int *,int ) ;
 int dictGetEntryVal (int *) ;
 int memcpy (int *,int ,int) ;
 int sdsfree (int ) ;
 int sdsnewlen (char*,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char tolower (char) ;

__attribute__((used)) static int __redisGetSubscribeCallback(redisAsyncContext *ac, redisReply *reply, redisCallback *dstcb) {
    redisContext *c = &(ac->c);
    dict *callbacks;
    dictEntry *de;
    int pvariant;
    char *stype;
    sds sname;



    if (reply->type == REDIS_REPLY_ARRAY) {
        assert(reply->elements >= 2);
        assert(reply->element[0]->type == REDIS_REPLY_STRING);
        stype = reply->element[0]->str;
        pvariant = (tolower(stype[0]) == 'p') ? 1 : 0;

        if (pvariant)
            callbacks = ac->sub.patterns;
        else
            callbacks = ac->sub.channels;


        assert(reply->element[1]->type == REDIS_REPLY_STRING);
        sname = sdsnewlen(reply->element[1]->str,reply->element[1]->len);
        de = dictFind(callbacks,sname);
        if (de != ((void*)0)) {
            memcpy(dstcb,dictGetEntryVal(de),sizeof(*dstcb));


            if (strcasecmp(stype+pvariant,"unsubscribe") == 0) {
                dictDelete(callbacks,sname);



                assert(reply->element[2]->type == REDIS_REPLY_INTEGER);
                if (reply->element[2]->integer == 0)
                    c->flags &= ~REDIS_SUBSCRIBED;
            }
        }
        sdsfree(sname);
    } else {

        __redisShiftCallback(&ac->sub.invalid,dstcb);
    }
    return REDIS_OK;
}
