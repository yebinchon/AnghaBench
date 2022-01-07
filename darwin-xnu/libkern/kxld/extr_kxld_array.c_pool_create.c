
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* buffer; } ;
typedef TYPE_1__ KXLDArrayPool ;


 int bzero (TYPE_1__*,size_t) ;
 int finish ;
 TYPE_1__* kxld_alloc (int) ;
 TYPE_1__* kxld_page_alloc (size_t) ;
 int pool_destroy (TYPE_1__*,size_t) ;
 int require (TYPE_1__*,int ) ;

__attribute__((used)) static KXLDArrayPool *
pool_create(size_t capacity)
{
    KXLDArrayPool *pool = ((void*)0), *rval = ((void*)0);

    pool = kxld_alloc(sizeof(*pool));
    require(pool, finish);

    pool->buffer = kxld_page_alloc(capacity);
    require(pool->buffer, finish);
    bzero(pool->buffer, capacity);

    rval = pool;
    pool = ((void*)0);

finish:
    if (pool) pool_destroy(pool, capacity);
    return rval;
}
