
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {TYPE_1__* CurrentIpSecSaSend; TYPE_1__* CurrentIpSecSaRecv; } ;
struct TYPE_12__ {int IPsecSaList; int ClientList; } ;
struct TYPE_11__ {struct TYPE_11__* PairIPsecSa; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_CLIENT ;


 int Delete (int ,TYPE_1__*) ;
 int FreeIPsecSa (TYPE_1__*) ;
 TYPE_1__* GetOtherLatestIPsecSa (TYPE_2__*,TYPE_1__*) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void PurgeIPsecSa(IKE_SERVER *ike, IPSECSA *sa)
{
 UINT i;
 IPSECSA *other_sa;

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return;
 }

 other_sa = GetOtherLatestIPsecSa(ike, sa);


 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa2 = LIST_DATA(ike->IPsecSaList, i);

  if (sa2->PairIPsecSa == sa)
  {
   sa2->PairIPsecSa = other_sa;
  }
 }


 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);

  if (c->CurrentIpSecSaRecv == sa)
  {
   c->CurrentIpSecSaRecv = other_sa;
  }

  if (c->CurrentIpSecSaSend == sa)
  {
   c->CurrentIpSecSaSend = other_sa;
  }
 }

 Delete(ike->IPsecSaList, sa);
 FreeIPsecSa(sa);
}
