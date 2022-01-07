
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccchacha20poly1305_fns_t ;
struct TYPE_2__ {int ccchacha20poly1305_fns; } ;


 TYPE_1__* g_crypto_funcs ;

__attribute__((used)) static ccchacha20poly1305_fns_t fns(void)
{
    return g_crypto_funcs->ccchacha20poly1305_fns;
}
