
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; int * reader; int * obuf; } ;
typedef TYPE_1__ redisContext ;


 int close (scalar_t__) ;
 int free (TYPE_1__*) ;
 int redisReaderFree (int *) ;
 int sdsfree (int *) ;

void redisFree(redisContext *c) {
    if (c->fd > 0)
        close(c->fd);
    if (c->obuf != ((void*)0))
        sdsfree(c->obuf);
    if (c->reader != ((void*)0))
        redisReaderFree(c->reader);
    free(c);
}
