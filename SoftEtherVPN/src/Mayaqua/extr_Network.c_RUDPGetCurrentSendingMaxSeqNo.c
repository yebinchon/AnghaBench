
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_6__ {int SeqNo; } ;
struct TYPE_5__ {int SendSegmentList; } ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_2__ RUDP_SEGMENT ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT64 RUDPGetCurrentSendingMaxSeqNo(RUDP_SESSION *se)
{
 RUDP_SEGMENT *s;

 if (se == ((void*)0))
 {
  return 0;
 }

 if (LIST_NUM(se->SendSegmentList) == 0)
 {
  return 0;
 }

 s = LIST_DATA(se->SendSegmentList, (LIST_NUM(se->SendSegmentList) - 1));

 return s->SeqNo;
}
