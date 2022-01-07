
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int DhsList; int HashesList; int CryptosList; } ;
typedef int IKE_HASH ;
typedef TYPE_1__ IKE_ENGINE ;
typedef int IKE_DH ;
typedef int IKE_CRYPTO ;


 int Free (TYPE_1__*) ;
 int FreeIkeCrypto (int *) ;
 int FreeIkeDh (int *) ;
 int FreeIkeHash (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeIkeEngine(IKE_ENGINE *e)
{
 UINT i;

 if (e == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(e->CryptosList);i++)
 {
  IKE_CRYPTO *c = LIST_DATA(e->CryptosList, i);

  FreeIkeCrypto(c);
 }

 ReleaseList(e->CryptosList);

 for (i = 0;i < LIST_NUM(e->HashesList);i++)
 {
  IKE_HASH *h = LIST_DATA(e->HashesList, i);

  FreeIkeHash(h);
 }
 ReleaseList(e->HashesList);

 for (i = 0;i < LIST_NUM(e->DhsList);i++)
 {
  IKE_DH *d = LIST_DATA(e->DhsList, i);

  FreeIkeDh(d);
 }
 ReleaseList(e->DhsList);

 Free(e);
}
