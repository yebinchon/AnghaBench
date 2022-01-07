
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IKE_SERVER ;


 int INFINITE ;
 int Rand32 () ;
 int * SearchClientToServerIPsecSaBySpi (int *,int) ;

UINT GenerateNewIPsecSaSpi(IKE_SERVER *ike, UINT counterpart_spi)
{
 UINT ret;

 if (ike == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  ret = Rand32();

  if (ret != counterpart_spi)
  {
   if (ret >= 4096 && ret != INFINITE)
   {
    if (SearchClientToServerIPsecSaBySpi(ike, ret) == ((void*)0))
    {
     return ret;
    }
   }
  }
 }
}
