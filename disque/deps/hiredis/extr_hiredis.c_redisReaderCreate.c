
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* errstr; int ridx; int * buf; int maxbuf; int * fn; scalar_t__ err; } ;
typedef TYPE_1__ redisReader ;


 int REDIS_READER_MAX_BUF ;
 TYPE_1__* calloc (int,int) ;
 int defaultFunctions ;
 int free (TYPE_1__*) ;
 int * sdsempty () ;

redisReader *redisReaderCreate(void) {
    redisReader *r;

    r = calloc(sizeof(redisReader),1);
    if (r == ((void*)0))
        return ((void*)0);

    r->err = 0;
    r->errstr[0] = '\0';
    r->fn = &defaultFunctions;
    r->buf = sdsempty();
    r->maxbuf = REDIS_READER_MAX_BUF;
    if (r->buf == ((void*)0)) {
        free(r);
        return ((void*)0);
    }

    r->ridx = -1;
    return r;
}
