
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_BLOCK ;
 scalar_t__ REDIS_ERR ;
 int REDIS_OK ;
 scalar_t__ redisBufferRead (TYPE_1__*) ;
 scalar_t__ redisBufferWrite (TYPE_1__*,int*) ;
 scalar_t__ redisGetReplyFromReader (TYPE_1__*,void**) ;

int redisGetReply(redisContext *c, void **reply) {
    int wdone = 0;
    void *aux = ((void*)0);


    if (redisGetReplyFromReader(c,&aux) == REDIS_ERR)
        return REDIS_ERR;


    if (aux == ((void*)0) && c->flags & REDIS_BLOCK) {

        do {
            if (redisBufferWrite(c,&wdone) == REDIS_ERR)
                return REDIS_ERR;
        } while (!wdone);


        do {
            if (redisBufferRead(c) == REDIS_ERR)
                return REDIS_ERR;
            if (redisGetReplyFromReader(c,&aux) == REDIS_ERR)
                return REDIS_ERR;
        } while (aux == ((void*)0));
    }


    if (reply != ((void*)0)) *reply = aux;
    return REDIS_OK;
}
