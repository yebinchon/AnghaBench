
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_cbc {int dummy; } ;
struct TYPE_2__ {struct ccmode_cbc const* cctdes_cbc_decrypt; } ;


 TYPE_1__* g_crypto_funcs ;

const struct ccmode_cbc *
ccdes3_cbc_decrypt_mode(void)
{
 if (g_crypto_funcs)
  return (g_crypto_funcs->cctdes_cbc_decrypt);
 return (((void*)0));
}
