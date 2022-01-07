
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ SeqNo; } ;
struct TYPE_8__ {int * SendSegmentList; } ;
typedef int RUDP_STACK ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_2__ RUDP_SEGMENT ;
typedef int LIST ;


 int Add (int *,TYPE_2__*) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void RUDPProcessAck2(RUDP_STACK *r, RUDP_SESSION *se, UINT64 max_seq)
{
 LIST *o;
 UINT i;

 if (r == ((void*)0) || se == ((void*)0) || max_seq == 0)
 {
  return;
 }

 o = ((void*)0);

 for (i = 0;i < LIST_NUM(se->SendSegmentList);i++)
 {
  RUDP_SEGMENT *s = LIST_DATA(se->SendSegmentList, i);

  if (s->SeqNo <= max_seq)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, s);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   RUDP_SEGMENT *s = LIST_DATA(o, i);

   Delete(se->SendSegmentList, s);

   Free(s);
  }

  ReleaseList(o);
 }
}
