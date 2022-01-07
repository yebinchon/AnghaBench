
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_2__ {int * auth; } ;


 int REDIS_ERR ;
 int REDIS_OK ;
 TYPE_1__ config ;
 int context ;
 int freeReplyObject (int *) ;
 int * redisCommand (int ,char*,int *) ;

__attribute__((used)) static int cliAuth() {
    redisReply *reply;
    if (config.auth == ((void*)0)) return REDIS_OK;

    reply = redisCommand(context,"AUTH %s",config.auth);
    if (reply != ((void*)0)) {
        freeReplyObject(reply);
        return REDIS_OK;
    }
    return REDIS_ERR;
}
