
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {struct ccdigest_info const* ccsha1_di; } ;


 TYPE_1__* g_crypto_funcs ;

const struct ccdigest_info *
ccsha1_di(void)
{
 if (g_crypto_funcs)
  return (g_crypto_funcs->ccsha1_di);
 return (((void*)0));
}
