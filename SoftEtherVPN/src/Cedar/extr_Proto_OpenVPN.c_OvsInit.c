
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK_EVENT ;
typedef int INTERRUPT_MANAGER ;
typedef int CEDAR ;


 void* NewOpenVpnServer (int *,int *,int *) ;

bool OvsInit(void **param, CEDAR *cedar, INTERRUPT_MANAGER *im, SOCK_EVENT *se)
{
 if (param == ((void*)0) || cedar == ((void*)0) || im == ((void*)0) || se == ((void*)0))
 {
  return 0;
 }

 *param = NewOpenVpnServer(cedar, im, se);

 return 1;
}
