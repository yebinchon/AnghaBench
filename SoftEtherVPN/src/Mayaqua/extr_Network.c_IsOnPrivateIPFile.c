
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ Mask; scalar_t__ Ip2; } ;
typedef TYPE_1__ PRIVATE_IP_SUBNET ;
typedef int LIST ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * g_private_ip_list ;

bool IsOnPrivateIPFile(UINT ip)
{
 bool ret = 0;

 if (g_private_ip_list != ((void*)0))
 {
  LIST *o = g_private_ip_list;
  UINT i;

  for (i = 0;i < LIST_NUM(o);i++)
  {
   PRIVATE_IP_SUBNET *p = LIST_DATA(o, i);

   if ((ip & p->Mask) == p->Ip2)
   {
    ret = 1;
   }
  }
 }

 return ret;
}
