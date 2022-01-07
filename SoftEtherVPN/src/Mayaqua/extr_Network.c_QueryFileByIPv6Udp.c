
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef float UCHAR ;
typedef int SOCK_EVENT ;
typedef int SOCK ;
typedef int LIST ;
typedef int IP ;
typedef int INTERRUPT_MANAGER ;
typedef int BUF ;


 int AddInterrupt (int *,scalar_t__) ;
 scalar_t__ Cmp (float*,int ,int ) ;
 int Disconnect (int *) ;
 int Free (float*) ;
 int FreeInterruptManager (int *) ;
 int GetNextIntervalForInterrupt (int *) ;
 int JoinSockToSockEvent (int *,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 float* Malloc (scalar_t__) ;
 int * NewBuf () ;
 int * NewInterruptManager () ;
 int * NewSockEvent () ;
 int * NewUDP6 (int ,int *) ;
 scalar_t__ RecvFrom (int *,int *,scalar_t__*,float*,scalar_t__) ;
 int ReleaseSock (int *) ;
 int ReleaseSockEvent (int *) ;
 scalar_t__ SOCK_LATER ;
 int SeekBuf (int *,int ,int ) ;
 int SendTo (int *,int *,scalar_t__,float*,int) ;
 int StrLen (int ) ;
 scalar_t__ Tick64 () ;
 scalar_t__ UDP_FILE_QUERY_DST_PORT ;
 int UDP_FILE_QUERY_MAGIC_NUMBER ;
 scalar_t__ UDP_FILE_QUERY_RETRY_INTERVAL ;
 int WaitSockEvent (int *,int ) ;
 int WriteBuf (int *,float*,scalar_t__) ;

BUF *QueryFileByIPv6Udp(LIST *ip_list, UINT timeout, bool *cancel)
{
 bool dummy_flag = 0;
 UINT64 start_tick, giveup_tick;
 UINT64 next_send_tick;
 SOCK *s;
 INTERRUPT_MANAGER *interrupt;
 BUF *buf = ((void*)0);
 SOCK_EVENT *se;
 UCHAR *tmp_buf;
 UINT tmp_buf_size = 65535;

 if (cancel == ((void*)0))
 {
  cancel = &dummy_flag;
 }
 if (ip_list == ((void*)0))
 {
  return ((void*)0);
 }

 s = NewUDP6(0, ((void*)0));
 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 tmp_buf = Malloc(tmp_buf_size);

 start_tick = Tick64();
 giveup_tick = start_tick + (UINT64)timeout;
 next_send_tick = 0;

 interrupt = NewInterruptManager();

 AddInterrupt(interrupt, giveup_tick);

 se = NewSockEvent();
 JoinSockToSockEvent(s, se);

 while (1)
 {
  UINT64 now = Tick64();

  if (now >= giveup_tick)
  {

   break;
  }

  if (*cancel)
  {

   break;
  }


  while (1)
  {
   IP src_ip;
   UINT src_port;
   UINT r;

   r = RecvFrom(s, &src_ip, &src_port, tmp_buf, tmp_buf_size);

   if (r == SOCK_LATER || r == 0)
   {
    break;
   }

   if (src_port == UDP_FILE_QUERY_DST_PORT)
   {
    if (r >= 40)
    {
     if (Cmp(tmp_buf, UDP_FILE_QUERY_MAGIC_NUMBER, StrLen(UDP_FILE_QUERY_MAGIC_NUMBER)) == 0)
     {

      buf = NewBuf();
      WriteBuf(buf, tmp_buf, r);
      SeekBuf(buf, 0, 0);
      break;
     }
    }
   }
  }

  if (buf != ((void*)0))
  {

   break;
  }

  if (next_send_tick == 0 || (now >= next_send_tick))
  {

   UINT i;
   for (i = 0;i < LIST_NUM(ip_list);i++)
   {
    IP *ip = LIST_DATA(ip_list, i);
    UCHAR c = 'F';

    SendTo(s, ip, UDP_FILE_QUERY_DST_PORT, &c, 1);
   }

   next_send_tick = now + (UINT64)UDP_FILE_QUERY_RETRY_INTERVAL;
   AddInterrupt(interrupt, next_send_tick);
  }

  WaitSockEvent(se, GetNextIntervalForInterrupt(interrupt));
 }

 FreeInterruptManager(interrupt);

 Disconnect(s);
 ReleaseSock(s);

 ReleaseSockEvent(se);

 Free(tmp_buf);

 return buf;
}
