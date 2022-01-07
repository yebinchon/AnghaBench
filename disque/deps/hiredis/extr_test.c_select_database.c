
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ integer; } ;
typedef TYPE_1__ redisReply ;
typedef int redisContext ;


 scalar_t__ REDIS_REPLY_INTEGER ;
 int assert (int ) ;
 int exit (int) ;
 int freeReplyObject (TYPE_1__*) ;
 int printf (char*) ;
 TYPE_1__* redisCommand (int *,char*) ;

__attribute__((used)) static redisContext *select_database(redisContext *c) {
    redisReply *reply;


    reply = redisCommand(c,"SELECT 9");
    assert(reply != ((void*)0));
    freeReplyObject(reply);


    reply = redisCommand(c,"DBSIZE");
    assert(reply != ((void*)0));
    if (reply->type == REDIS_REPLY_INTEGER && reply->integer == 0) {

        freeReplyObject(reply);
    } else {
        printf("Database #9 is not empty, test can not continue\n");
        exit(1);
    }

    return c;
}
