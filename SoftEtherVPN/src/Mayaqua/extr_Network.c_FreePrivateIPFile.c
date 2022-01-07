
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PRIVATE_IP_SUBNET ;
typedef int LIST ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int * g_private_ip_list ;
 int g_use_privateip_file ;

void FreePrivateIPFile()
{
 if (g_private_ip_list != ((void*)0))
 {
  LIST *o = g_private_ip_list;
  UINT i;

  g_private_ip_list = ((void*)0);

  for (i = 0;i < LIST_NUM(o);i++)
  {
   PRIVATE_IP_SUBNET *p = LIST_DATA(o, i);

   Free(p);
  }

  ReleaseList(o);
 }

 g_use_privateip_file = 0;
}
