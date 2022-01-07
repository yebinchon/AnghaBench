
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ccdes_key_set_odd_parity_fn ) (void*,unsigned long) ;} ;


 TYPE_1__* g_crypto_funcs ;
 int stub1 (void*,unsigned long) ;

void ccdes_key_set_odd_parity(void *key, unsigned long length)
{
 if (g_crypto_funcs)
  (*g_crypto_funcs->ccdes_key_set_odd_parity_fn)(key, length);
}
