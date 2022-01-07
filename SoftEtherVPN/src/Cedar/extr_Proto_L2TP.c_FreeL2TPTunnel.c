
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int RecvQueue; int SendQueue; int SessionList; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef int L2TP_SESSION ;
typedef int L2TP_QUEUE ;


 int Free (TYPE_1__*) ;
 int FreeL2TPQueue (int *) ;
 int FreeL2TPSession (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeL2TPTunnel(L2TP_TUNNEL *t)
{
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(t->SessionList);i++)
 {
  L2TP_SESSION *s = LIST_DATA(t->SessionList, i);

  FreeL2TPSession(s);
 }

 ReleaseList(t->SessionList);

 for (i = 0;i < LIST_NUM(t->SendQueue);i++)
 {
  L2TP_QUEUE *q = LIST_DATA(t->SendQueue, i);

  FreeL2TPQueue(q);
 }

 ReleaseList(t->SendQueue);

 for (i = 0;i < LIST_NUM(t->RecvQueue);i++)
 {
  L2TP_QUEUE *q = LIST_DATA(t->RecvQueue, i);

  FreeL2TPQueue(q);
 }

 ReleaseList(t->RecvQueue);

 Free(t);
}
