
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int elements; scalar_t__ type; int str; TYPE_1__** element; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_10__ {int err; char* errstr; } ;
struct TYPE_8__ {char* str; } ;


 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_STATUS ;
 TYPE_3__* context ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int freeReplyObject (TYPE_2__*) ;
 int redisAppendCommand (TYPE_3__*,char*,char*) ;
 scalar_t__ redisGetReply (TYPE_3__*,void**) ;
 int stderr ;
 int toIntType (char*,int ) ;

__attribute__((used)) static void getKeyTypes(redisReply *keys, int *types) {
    redisReply *reply;
    unsigned int i;


    for(i=0;i<keys->elements;i++) {
        redisAppendCommand(context, "TYPE %s", keys->element[i]->str);
    }


    for(i=0;i<keys->elements;i++) {
        if(redisGetReply(context, (void**)&reply)!=REDIS_OK) {
            fprintf(stderr, "Error getting type for key '%s' (%d: %s)\n",
                keys->element[i]->str, context->err, context->errstr);
            exit(1);
        } else if(reply->type != REDIS_REPLY_STATUS) {
            fprintf(stderr, "Invalid reply type (%d) for TYPE on key '%s'!\n",
                reply->type, keys->element[i]->str);
            exit(1);
        }

        types[i] = toIntType(keys->element[i]->str, reply->str);
        freeReplyObject(reply);
    }
}
