
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int RPC_ADMIN_OPTION ;


 scalar_t__ GetHubAdminOptionData (int *,char*) ;
 scalar_t__ INFINITE ;

void GetHubAdminOptionDataAndSet(RPC_ADMIN_OPTION *ao, char *name, UINT *dest)
{
 UINT value;

 if (ao == ((void*)0) || name == ((void*)0) || dest == ((void*)0))
 {
  return;
 }

 value = GetHubAdminOptionData(ao, name);
 if (value == INFINITE)
 {
  return;
 }

 *dest = value;
}
