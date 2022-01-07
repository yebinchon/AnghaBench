
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp64 ;
typedef int tmp ;
typedef int suprise ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_7__ {int AbnormalTerminated; scalar_t__ end_tick; scalar_t__ RealSpan; scalar_t__ start_tick; scalar_t__* Cancel; scalar_t__ Halt; int Print; int Param; void* ErrorCode; scalar_t__ Span; scalar_t__ session_id; int flag2; int flag1; } ;
struct TYPE_6__ {int Download; int ServerUploadReportReceived; int State; scalar_t__ NextSendRequestReportTick; int HideErrMsg; double Id; int NumBytes; int Sock; } ;
struct TYPE_5__ {int Ok; int SockList; int SockEvent; int StartEvent; TYPE_3__* Ttc; } ;
typedef TYPE_1__ TTC_WORKER ;
typedef TYPE_2__ TTC_SOCK ;
typedef TYPE_3__ TTC ;
typedef int THREAD ;


 void* ERR_PROTOCOL_ERROR ;
 int Endian64 (scalar_t__) ;
 int Free (scalar_t__*) ;
 int INFINITE ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;
 int NoticeThreadInit (int *) ;
 scalar_t__ Recv (int ,scalar_t__*,scalar_t__,int) ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ Send (int ,scalar_t__*,int,int) ;
 scalar_t__ Tick64 () ;
 int TtGenerateRandomData (scalar_t__**,scalar_t__*) ;
 int TtPrint (int ,int ,int *) ;
 int UniFormat (int *,int,int *,double) ;
 int WRITE_UINT64 (scalar_t__*,scalar_t__) ;
 int Wait (int ,int ) ;
 int WaitSockEvent (int ,int) ;
 int * _UU (char*) ;

void TtcWorkerThread(THREAD *thread, void *param)
{
 TTC_WORKER *w;
 TTC *ttc;
 bool dont_block_next_time = 0;
 bool halting = 0;
 UINT64 halt_timeout = 0;
 bool all_sockets_blocked;
 wchar_t tmp[MAX_SIZE];
 UCHAR *send_buf_data, *recv_buf_data;
 UINT buf_size;
 UINT64 tmp64;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 w = (TTC_WORKER *)param;
 ttc = w->Ttc;


 TtGenerateRandomData(&send_buf_data, &buf_size);
 TtGenerateRandomData(&recv_buf_data, &buf_size);

 NoticeThreadInit(thread);


 Wait(w->StartEvent, INFINITE);


 while (1)
 {
  UINT i;

  if (dont_block_next_time == 0)
  {
   WaitSockEvent(w->SockEvent, 50);
  }

  dont_block_next_time = 0;

  if (ttc->AbnormalTerminated)
  {

   break;
  }

  if (ttc->Halt || ttc->end_tick <= Tick64() || (ttc->Cancel != ((void*)0) && (*ttc->Cancel)))
  {

   if (halting == 0)
   {
    if (ttc->Halt || (ttc->Cancel != ((void*)0) && (*ttc->Cancel)))
    {
     if ((ttc->flag1++) == 0)
     {

      TtPrint(ttc->Param, ttc->Print, _UU("TTC_COMM_USER_CANCEL"));
     }
    }
    else
    {

     if ((ttc->flag2++) == 0)
     {
      UniFormat(tmp, sizeof(tmp), _UU("TTC_COMM_END"),
       (double)ttc->Span / 1000.0);
      TtPrint(ttc->Param, ttc->Print, tmp);
     }
    }

    if (ttc->RealSpan == 0)
    {
     ttc->RealSpan = Tick64() - ttc->start_tick;
    }

    halting = 1;


    halt_timeout = Tick64() + 60000ULL;
   }
  }

  if (halt_timeout != 0)
  {
   bool ok = 1;


   for (i = 0;i < LIST_NUM(w->SockList);i++)
   {
    TTC_SOCK *ts = LIST_DATA(w->SockList, i);

    if (ts->Download == 0)
    {
     if (ts->ServerUploadReportReceived == 0)
     {
      ok = 0;
     }
    }
   }

   if (ok)
   {

    w->Ok = 1;
    break;
   }
   else
   {
    if (halt_timeout <= Tick64())
    {

     ttc->AbnormalTerminated = 1;
     ttc->ErrorCode = ERR_PROTOCOL_ERROR;
     break;
    }
   }
  }

  all_sockets_blocked = 0;



  while (all_sockets_blocked == 0)
  {
   all_sockets_blocked = 1;

   for (i = 0;i < LIST_NUM(w->SockList);i++)
   {
    UINT ret = SOCK_LATER;
    TTC_SOCK *ts = LIST_DATA(w->SockList, i);
    bool blocked_for_this_socket = 0;
    UCHAR c = 0;
    UCHAR c_and_session_id[1 + sizeof(UINT64) + sizeof(UINT64)];

    if (halt_timeout != 0)
    {
     if (ts->State != 3 && ts->State != 4)
     {
      if (ts->Download == 0)
      {
       if (ts->State != 0)
       {
        ts->State = 3;
       }
       else
       {
        ts->ServerUploadReportReceived = 1;
        ts->State = 4;
       }
      }
      else
      {
       ts->State = 4;
      }
     }
    }

    switch (ts->State)
    {
    case 0:


     if (ts->Download)
     {
      c = 1;
     }
     else
     {
      c = 0;
     }

     c_and_session_id[0] = c;
     WRITE_UINT64(c_and_session_id + 1, ttc->session_id);
     WRITE_UINT64(c_and_session_id + sizeof(UINT64) + 1, ttc->Span);

     ret = Send(ts->Sock, c_and_session_id, 1 + sizeof(UINT64) + sizeof(UINT64), 0);

     if (ret != 0 && ret != SOCK_LATER)
     {
      if (ts->Download)
      {
       ts->State = 1;
      }
      else
      {
       ts->State = 2;
      }
     }
     break;

    case 1:

     ret = Recv(ts->Sock, recv_buf_data, buf_size, 0);
     break;

    case 2:

     ret = Send(ts->Sock, send_buf_data, buf_size, 0);
     break;

    case 3:


     if (ts->NextSendRequestReportTick == 0 ||
      (Tick64() >= ts->NextSendRequestReportTick))
     {
      UCHAR suprise[MAX_SIZE];
      UINT i;

      ts->NextSendRequestReportTick = Tick64() + 200ULL;

      for (i = 0;i < sizeof(suprise);i++)
      {
       suprise[i] = '!';
      }

      (void)Send(ts->Sock, suprise, sizeof(suprise), 0);
     }

     ret = Recv(ts->Sock, &tmp64, sizeof(tmp64), 0);
     if (ret != 0 && ret != SOCK_LATER && ret == sizeof(tmp64))
     {
      ts->NumBytes = Endian64(tmp64);

      ts->ServerUploadReportReceived = 1;

      ts->State = 4;
     }
     break;

    case 4:

     if (Recv(ts->Sock, recv_buf_data, buf_size, 0) == SOCK_LATER)
     {
      ret = SOCK_LATER;
     }
     break;
    }

    if (ret == 0)
    {

     ttc->AbnormalTerminated = 1;
     ttc->ErrorCode = ERR_PROTOCOL_ERROR;
     blocked_for_this_socket = 1;
     dont_block_next_time = 0;

     if (ts->HideErrMsg == 0)
     {
      UniFormat(tmp, sizeof(tmp), _UU("TTC_COMM_DISCONNECTED"), ts->Id);
      TtPrint(ttc->Param, ttc->Print, tmp);
      ts->HideErrMsg = 1;
     }
    }
    else if (ret == SOCK_LATER)
    {

     blocked_for_this_socket = 1;
     dont_block_next_time = 0;
    }
    else
    {
     if (ts->Download)
     {
      ts->NumBytes += (UINT64)ret;
     }
    }

    if (blocked_for_this_socket == 0)
    {
     all_sockets_blocked = 0;
    }
   }

   if (ttc->Halt || (ttc->Cancel != ((void*)0) && (*ttc->Cancel)))
   {
    all_sockets_blocked = 1;
    dont_block_next_time = 1;
   }

   if (ttc->end_tick <= Tick64())
   {
    all_sockets_blocked = 1;
    dont_block_next_time = 1;
   }
  }
 }

 Free(send_buf_data);
 Free(recv_buf_data);
}
