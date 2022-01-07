
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int MacAddress; } ;
typedef TYPE_1__ NIC_ENTRY ;
typedef int LIST ;


 scalar_t__ Cmp (int ,void*,int) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsMacAddressLocalInner(LIST *o, void *addr)
{
 bool ret = 0;
 UINT i;

 if (o == ((void*)0) || addr == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  NIC_ENTRY *e = LIST_DATA(o, i);

  if (Cmp(e->MacAddress, addr, 6) == 0)
  {
   ret = 1;
   break;
  }
 }

 return ret;
}
