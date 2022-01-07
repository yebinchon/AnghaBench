
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ crypto_functions_t ;


 scalar_t__ g_crypto_funcs ;

int register_crypto_functions(const crypto_functions_t funcs)
{
 if(g_crypto_funcs)
  return -1;

 g_crypto_funcs = funcs;

 return 0;
}
