
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int * IkeClient; } ;
struct TYPE_11__ {int ClientList; int IPsecSaList; int IkeSaList; } ;
struct TYPE_10__ {int * IkeClient; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_SA ;
typedef int IKE_CLIENT ;


 int Delete (int ,int *) ;
 int FreeIkeClient (TYPE_2__*,int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MarkIPsecSaAsDeleted (TYPE_2__*,TYPE_1__*) ;
 int MarkIkeSaAsDeleted (TYPE_2__*,TYPE_3__*) ;

void PurgeIkeClient(IKE_SERVER *ike, IKE_CLIENT *c)
{
 UINT i;

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return;
 }


 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

  if (sa->IkeClient == c)
  {
   MarkIkeSaAsDeleted(ike, sa);
  }
 }
 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);

  if (sa->IkeClient == c)
  {
   MarkIPsecSaAsDeleted(ike, sa);
  }
 }

 Delete(ike->ClientList, c);
 FreeIkeClient(ike, c);
}
