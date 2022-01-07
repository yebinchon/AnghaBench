
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int t ;
typedef scalar_t__ UINT64 ;
struct TYPE_10__ {scalar_t__ SeqNo; } ;
struct TYPE_9__ {int SendSegmentList; } ;
typedef int RUDP_STACK ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_2__ RUDP_SEGMENT ;


 int Delete (int ,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int Zero (TYPE_2__*,int) ;

void RUDPProcessAck(RUDP_STACK *r, RUDP_SESSION *se, UINT64 seq)
{
 RUDP_SEGMENT t;
 RUDP_SEGMENT *s;

 if (r == ((void*)0) || se == ((void*)0) || seq == 0)
 {
  return;
 }

 Zero(&t, sizeof(t));
 t.SeqNo = seq;

 s = Search(se->SendSegmentList, &t);
 if (s == ((void*)0))
 {
  return;
 }

 Delete(se->SendSegmentList, s);
 Free(s);
}
