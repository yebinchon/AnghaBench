
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kpc_config_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 unsigned int WHITELIST_COUNT ;
 scalar_t__* whitelist ;

__attribute__((used)) static boolean_t
config_in_whitelist(kpc_config_t cfg)
{
 unsigned int i;

 for (i = 0; i < WHITELIST_COUNT; i++) {
  if (cfg == whitelist[i]) {
   return TRUE;
  }
 }

 return FALSE;
}
