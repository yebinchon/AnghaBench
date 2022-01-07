
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; } ;
typedef TYPE_1__ KXLDArrayPool ;


 int kxld_free (TYPE_1__*,int) ;
 int kxld_page_free (scalar_t__,size_t) ;

__attribute__((used)) static void
pool_destroy(KXLDArrayPool *pool, size_t capacity)
{
    if (pool) {
        if (pool->buffer) kxld_page_free(pool->buffer, capacity);
        kxld_free(pool, sizeof(*pool));
    }
}
