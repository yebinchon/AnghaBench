
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int * ClientList; int * IPsecSaList; int * IkeSaList; } ;
struct TYPE_14__ {scalar_t__ Deleting; } ;
typedef int LIST ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_1__ IKE_SA ;
typedef TYPE_1__ IKE_CLIENT ;


 int Add (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int PurgeIPsecSa (TYPE_2__*,TYPE_1__*) ;
 int PurgeIkeClient (TYPE_2__*,TYPE_1__*) ;
 int PurgeIkeSa (TYPE_2__*,TYPE_1__*) ;
 int ReleaseList (int *) ;

void PurgeDeletingSAsAndClients(IKE_SERVER *ike)
{
 UINT i;
 LIST *o = ((void*)0);

 if (ike == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);
  if (sa->Deleting)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, sa);
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_SA *sa = LIST_DATA(o, i);

  PurgeIkeSa(ike, sa);
 }

 ReleaseList(o);

 o = ((void*)0);

 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);
  if (sa->Deleting)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, sa);
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IPSECSA *sa = LIST_DATA(o, i);

  PurgeIPsecSa(ike, sa);
 }

 ReleaseList(o);

 o = ((void*)0);

 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);
  if (c->Deleting)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, c);
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_CLIENT *c = LIST_DATA(o, i);

  PurgeIkeClient(ike, c);
 }

 ReleaseList(o);
}
