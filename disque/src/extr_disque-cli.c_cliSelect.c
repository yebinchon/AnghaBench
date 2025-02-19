
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_6__ {scalar_t__ dbnum; } ;


 int REDIS_ERR ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 TYPE_4__ config ;
 int context ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_1__* redisCommand (int ,char*,scalar_t__) ;

__attribute__((used)) static int cliSelect() {
    redisReply *reply;
    if (config.dbnum == 0) return REDIS_OK;

    reply = redisCommand(context,"SELECT %d",config.dbnum);
    if (reply != ((void*)0)) {
        int result = REDIS_OK;
        if (reply->type == REDIS_REPLY_ERROR) result = REDIS_ERR;
        freeReplyObject(reply);
        return result;
    }
    return REDIS_ERR;
}
