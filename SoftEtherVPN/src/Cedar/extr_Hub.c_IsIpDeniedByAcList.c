
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Deny; } ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_1__ AC ;


 int GSF_DISABLE_AC ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 scalar_t__ IsIpMaskedByAc (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsIpDeniedByAcList(IP *ip, LIST *o)
{
 UINT i;

 if (ip == ((void*)0) || o == ((void*)0))
 {
  return 0;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_AC) != 0)
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  AC *ac = LIST_DATA(o, i);

  if (IsIpMaskedByAc(ip, ac))
  {
   if (ac->Deny == 0)
   {
    return 0;
   }
   else
   {
    return 1;
   }
  }
 }

 return 0;
}
