
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int lock; int * Msg; } ;
typedef TYPE_1__ HUB ;


 int * CopyUniStr (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;

wchar_t *GetHubMsg(HUB *h)
{
 wchar_t *ret = ((void*)0);

 if (h == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(h->lock);
 {
  if (h->Msg != ((void*)0))
  {
   ret = CopyUniStr(h->Msg);
  }
 }
 Unlock(h->lock);

 return ret;
}
