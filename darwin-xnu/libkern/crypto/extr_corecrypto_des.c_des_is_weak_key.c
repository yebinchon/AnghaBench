
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int des_cblock ;
struct TYPE_2__ {int (* ccdes_key_is_weak_fn ) (int *,int ) ;} ;


 int CCDES_KEY_SIZE ;
 TYPE_1__* g_crypto_funcs ;
 int stub1 (int *,int ) ;

int des_is_weak_key(des_cblock *key)
{
 return g_crypto_funcs->ccdes_key_is_weak_fn(key, CCDES_KEY_SIZE);
}
