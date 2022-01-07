
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {scalar_t__ SeqNo; int Size; int Data; } ;
struct TYPE_6__ {int SendSegmentList; int NextSendSeqNo; } ;
typedef int RUDP_STACK ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_2__ RUDP_SEGMENT ;


 int Copy (int ,void*,int ) ;
 int Insert (int ,TYPE_2__*) ;
 int RUDP_MAX_SEGMENT_SIZE ;
 TYPE_2__* ZeroMalloc (int) ;

void RUDPSendSegment(RUDP_STACK *r, RUDP_SESSION *se, void *data, UINT size)
{
 RUDP_SEGMENT *s;

 if (r == ((void*)0) || se == ((void*)0) || (size != 0 && data == ((void*)0)) || (size > RUDP_MAX_SEGMENT_SIZE))
 {
  return;
 }

 s = ZeroMalloc(sizeof(RUDP_SEGMENT));

 Copy(s->Data, data, size);
 s->Size = size;

 s->SeqNo = se->NextSendSeqNo++;

 Insert(se->SendSegmentList, s);
}
