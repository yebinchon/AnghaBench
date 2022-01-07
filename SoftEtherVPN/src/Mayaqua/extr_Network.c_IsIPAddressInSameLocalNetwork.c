
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int* addr; } ;
typedef int LIST ;
typedef TYPE_1__ IP ;


 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 scalar_t__ IsIP4 (TYPE_1__*) ;
 scalar_t__ IsInSameNetwork4Standard (TYPE_1__*,TYPE_1__*) ;
 int IsZeroIp (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsIPAddressInSameLocalNetwork(IP *a)
{
 bool ret = 0;
 LIST *o;
 UINT i;

 if (a == ((void*)0))
 {
  return 0;
 }

 o = GetHostIPAddressList();

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP *p = LIST_DATA(o, i);

   if (IsIP4(p))
   {
    if (IsZeroIp(p) == 0 && p->addr[0] != 127)
    {
     if (IsInSameNetwork4Standard(p, a))
     {
      ret = 1;
      break;
     }
    }
   }
  }

  FreeHostIPAddressList(o);
 }

 return ret;
}
