
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int BulkRecvKey; int BulkSendKey; int SendFifo; int RecvFifo; int ReplyAckList; int * TcpSock; int RecvSegmentList; int SendSegmentList; } ;
typedef TYPE_1__ RUDP_SESSION ;
typedef TYPE_1__ RUDP_SEGMENT ;


 int Debug (char*,TYPE_1__*) ;
 int Disconnect (int *) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseFifo (int ) ;
 int ReleaseInt64List (int ) ;
 int ReleaseList (int ) ;
 int ReleaseSharedBuffer (int ) ;
 int ReleaseSock (int *) ;

void RUDPFreeSession(RUDP_SESSION *se)
{
 UINT i;

 if (se == ((void*)0))
 {
  return;
 }

 Debug("RUDPFreeSession %X\n", se);

 for (i = 0;i < LIST_NUM(se->SendSegmentList);i++)
 {
  RUDP_SEGMENT *s = LIST_DATA(se->SendSegmentList, i);

  Free(s);
 }

 ReleaseList(se->SendSegmentList);

 for (i = 0;i < LIST_NUM(se->RecvSegmentList);i++)
 {
  RUDP_SEGMENT *s = LIST_DATA(se->RecvSegmentList, i);

  Free(s);
 }

 ReleaseList(se->RecvSegmentList);

 if (se->TcpSock != ((void*)0))
 {
  Disconnect(se->TcpSock);
  ReleaseSock(se->TcpSock);
 }

 ReleaseInt64List(se->ReplyAckList);

 ReleaseFifo(se->RecvFifo);
 ReleaseFifo(se->SendFifo);

 ReleaseSharedBuffer(se->BulkSendKey);
 ReleaseSharedBuffer(se->BulkRecvKey);

 Free(se);
}
