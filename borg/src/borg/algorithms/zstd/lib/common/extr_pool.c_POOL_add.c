
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* POOL_function ) (void*) ;
typedef int POOL_ctx ;



void POOL_add(POOL_ctx* ctx, POOL_function function, void* opaque) {
    (void)ctx;
    function(opaque);
}
