
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int integer; } ;
typedef TYPE_1__ redisReply ;


 scalar_t__ REDIS_REPLY_INTEGER ;
 int context ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_1__* redisCommand (int ,char*) ;
 int stderr ;

__attribute__((used)) static int getDbSize(void) {
    redisReply *reply;
    int size;

    reply = redisCommand(context, "DBSIZE");

    if(reply == ((void*)0) || reply->type != REDIS_REPLY_INTEGER) {
        fprintf(stderr, "Couldn't determine DBSIZE!\n");
        exit(1);
    }


    size = reply->integer;
    freeReplyObject(reply);

    return size;
}
