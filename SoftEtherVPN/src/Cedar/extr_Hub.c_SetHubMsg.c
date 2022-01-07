
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int lock; int * Msg; } ;
typedef TYPE_1__ HUB ;


 int Free (int *) ;
 int Lock (int ) ;
 int * UniCopyStr (int *) ;
 int UniIsEmptyStr (int *) ;
 int Unlock (int ) ;

void SetHubMsg(HUB *h, wchar_t *msg)
{

 if (h == ((void*)0))
 {
  return;
 }

 Lock(h->lock);
 {
  if (h->Msg != ((void*)0))
  {
   Free(h->Msg);
   h->Msg = ((void*)0);
  }

  if (UniIsEmptyStr(msg) == 0)
  {
   h->Msg = UniCopyStr(msg);
  }
 }
 Unlock(h->lock);
}
