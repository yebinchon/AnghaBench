
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int Deleting; scalar_t__ LastCommTick; scalar_t__ Established; int * IkeClient; } ;
struct TYPE_7__ {int IkeSaList; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

IKE_SA *GetOtherLatestIkeSa(IKE_SERVER *ike, IKE_SA *sa)
{
 UINT i;
 UINT64 min_value = 0;
 IKE_SA *max_sa = ((void*)0);

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return ((void*)0);
 }

 if (sa->IkeClient == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa2 = LIST_DATA(ike->IkeSaList, i);

  if (sa2 != sa)
  {
   if (sa2->IkeClient == sa->IkeClient)
   {
    if (sa2->Deleting == 0)
    {
     if (sa2->Established)
     {
      if (min_value < sa2->LastCommTick)
      {
       min_value = sa2->LastCommTick;

       max_sa = sa2;
      }
     }
    }
   }
  }
 }

 return max_sa;
}
