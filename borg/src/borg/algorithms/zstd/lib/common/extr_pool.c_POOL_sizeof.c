
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POOL_ctx ;


 int assert (int) ;
 int g_ctx ;

size_t POOL_sizeof(POOL_ctx* ctx) {
    if (ctx==((void*)0)) return 0;
    assert(ctx == &g_ctx);
    return sizeof(*ctx);
}
