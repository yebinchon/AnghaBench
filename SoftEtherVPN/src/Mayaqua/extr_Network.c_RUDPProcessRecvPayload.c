
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int t ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_10__ {int Size; int Data; scalar_t__ SeqNo; } ;
struct TYPE_9__ {scalar_t__ LastRecvCompleteSeqNo; int ReplyAckList; int RecvSegmentList; } ;
typedef int RUDP_STACK ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_2__ RUDP_SEGMENT ;


 int AddInt64Distinct (int ,scalar_t__) ;
 int Copy (int ,void*,int ) ;
 int Insert (int ,TYPE_2__*) ;
 scalar_t__ RUDP_MAX_NUM_ACK ;
 int RUDP_MAX_SEGMENT_SIZE ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void RUDPProcessRecvPayload(RUDP_STACK *r, RUDP_SESSION *se, UINT64 seq, void *payload_data, UINT payload_size)
{
 RUDP_SEGMENT t;
 RUDP_SEGMENT *s;

 if (r == ((void*)0) || se == ((void*)0) || seq == 0 || payload_data == ((void*)0) || payload_size == 0 || payload_size > RUDP_MAX_SEGMENT_SIZE)
 {
  return;
 }

 if (seq > (se->LastRecvCompleteSeqNo + RUDP_MAX_NUM_ACK))
 {

  return;
 }

 if (seq <= se->LastRecvCompleteSeqNo)
 {

  AddInt64Distinct(se->ReplyAckList, seq);
  return;
 }

 Zero(&t, sizeof(t));
 t.SeqNo = seq;

 s = Search(se->RecvSegmentList, &t);
 if (s != ((void*)0))
 {

  AddInt64Distinct(se->ReplyAckList, seq);
  return;
 }


 s = ZeroMalloc(sizeof(RUDP_SEGMENT));
 s->SeqNo = seq;
 Copy(s->Data, payload_data, payload_size);
 s->Size = payload_size;
 Insert(se->RecvSegmentList, s);


 AddInt64Distinct(se->ReplyAckList, seq);



}
