
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int * CancelList; TYPE_1__* Switch; } ;
struct TYPE_5__ {int lock; } ;
typedef int PKT ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ L3IF ;


 int CancelList (int *) ;
 int Free (void*) ;
 int L3RecvL2 (TYPE_2__*,int *) ;
 int Lock (int ) ;
 int * NewCancelList () ;
 int * ParsePacket (void*,int ) ;
 int ReleaseCancelList (int *) ;
 int Unlock (int ) ;

void L3PutPacket(L3IF *f, void *data, UINT size)
{
 PKT *p;
 L3SW *s;
 if (f == ((void*)0))
 {
  return;
 }

 s = f->Switch;

 if (data != ((void*)0))
 {

  if (f->CancelList == ((void*)0))
  {
   f->CancelList = NewCancelList();
  }


  p = ParsePacket(data, size);

  if (p == ((void*)0))
  {

   Free(data);
  }
  else
  {

   Lock(s->lock);
   {
    L3RecvL2(f, p);
   }
   Unlock(s->lock);
  }
 }
 else
 {

  if (f->CancelList != ((void*)0))
  {
   CancelList(f->CancelList);
   ReleaseCancelList(f->CancelList);
   f->CancelList = ((void*)0);
  }
 }
}
