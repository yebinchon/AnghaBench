
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int IPsecSaList; } ;
struct TYPE_9__ {scalar_t__ ServerToClient; int Deleting; scalar_t__ LastCommTick; TYPE_1__* PairIPsecSa; scalar_t__ Established; int * IkeClient; } ;
struct TYPE_8__ {scalar_t__ LastCommTick; } ;
typedef TYPE_2__ IPSECSA ;
typedef TYPE_3__ IKE_SERVER ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

IPSECSA *GetOtherLatestIPsecSa(IKE_SERVER *ike, IPSECSA *sa)
{
 UINT i;
 UINT64 min_value = 0;
 IPSECSA *max_sa = ((void*)0);

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return ((void*)0);
 }

 if (sa->IkeClient == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa2 = LIST_DATA(ike->IPsecSaList, i);

  if (sa2 != sa)
  {
   if (sa2->IkeClient == sa->IkeClient)
   {
    if (sa2->ServerToClient == sa->ServerToClient)
    {
     if (sa2->Deleting == 0)
     {
      if (sa2->Established)
      {
       UINT64 last_comm_tick = sa2->LastCommTick;

       if (sa2->ServerToClient)
       {
        if (sa2->PairIPsecSa != ((void*)0))
        {
         last_comm_tick = sa2->PairIPsecSa->LastCommTick;
        }
       }

       if (min_value < last_comm_tick)
       {
        min_value = last_comm_tick;

        max_sa = sa2;
       }
      }
     }
    }
   }
  }
 }

 return max_sa;
}
