
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int result_ip_str ;
typedef int ip_str ;
typedef int hostname ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_19__ {int Size; int Buf; } ;
struct TYPE_18__ {int IgnoreRecvErr; int IPv6; } ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ SOCK ;
typedef int PACK ;
typedef int IP ;
typedef int INTERRUPT_MANAGER ;
typedef TYPE_2__ BUF ;


 int AddInterrupt (int *,scalar_t__) ;
 int * BufToPack (TYPE_2__*) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Disconnect (TYPE_1__*) ;
 int Free (int *) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeInterruptManager (int *) ;
 int FreePack (int *) ;
 int GetIP4Ex (int *,char*,int ,int*) ;
 scalar_t__ GetNextIntervalForInterrupt (int *) ;
 scalar_t__ INFINITE ;
 int IPToStr (char*,int,int *) ;
 int IsEmptyStr (char*) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 int IsZeroIp (int *) ;
 int JoinSockToSockEvent (TYPE_1__*,int *) ;
 int ListenTcpForPopupFirewallDialog () ;
 scalar_t__ MAX (scalar_t__,int) ;
 scalar_t__ MAX_NUM_IGNORE_ERRORS ;
 int MAX_SIZE ;
 scalar_t__ MIN (scalar_t__,int) ;
 int * Malloc (scalar_t__) ;
 TYPE_2__* NewBuf () ;
 int * NewInterruptManager () ;
 int * NewPack () ;
 TYPE_1__* NewRUDPClientDirect (char*,int *,scalar_t__,scalar_t__*,scalar_t__,int*,TYPE_1__*,int *,int ,int) ;
 int * NewSockEvent () ;
 TYPE_1__* NewUDP4ForSpecificIp (int *,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,scalar_t__) ;
 int PackAddStr (int *,char*,char*) ;
 scalar_t__ PackCmpStr (int *,char*,char*) ;
 int PackGetBool (int *,char*) ;
 scalar_t__ PackGetInt (int *,char*) ;
 scalar_t__ PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 TYPE_2__* PackToBuf (int *) ;
 scalar_t__ Power (int,scalar_t__) ;
 int RUDPGetRegisterHostNameByIP (char*,int,int *) ;
 scalar_t__ RUDP_ERROR_NAT_T_NOT_FOUND ;
 scalar_t__ RUDP_ERROR_NAT_T_NO_RESPONSE ;
 scalar_t__ RUDP_ERROR_NAT_T_TWO_OR_MORE ;
 scalar_t__ RUDP_ERROR_OK ;
 scalar_t__ RUDP_ERROR_TIMEOUT ;
 scalar_t__ RUDP_ERROR_UNKNOWN ;
 scalar_t__ RUDP_ERROR_USER_CANCELED ;
 scalar_t__ RUDP_TIMEOUT ;
 scalar_t__ Rand64 () ;
 scalar_t__ RecvFrom (TYPE_1__*,int *,scalar_t__*,int *,scalar_t__) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseSockEvent (int *) ;
 scalar_t__ SOCK_LATER ;
 int SeekBuf (TYPE_2__*,int ,int ) ;
 int SendTo (TYPE_1__*,int *,scalar_t__,int ,int ) ;
 int StrToIP (int *,char*) ;
 scalar_t__ Tick64 () ;
 int UDP_NAT_TRAVERSAL_VERSION ;
 scalar_t__ UDP_NAT_T_CONNECT_INTERVAL ;
 scalar_t__ UDP_NAT_T_PORT ;
 int WaitSockEvent (int *,scalar_t__) ;
 int WriteBuf (TYPE_2__*,int *,scalar_t__) ;

SOCK *NewRUDPClientNatT(char *svc_name, IP *ip, UINT *error_code, UINT timeout, bool *cancel, char *hint_str, char *target_hostname)
{
 IP nat_t_ip;
 UINT dummy_int = 0;
 UINT64 giveup_tick;
 bool dummy_bool = 0;
 SOCK_EVENT *sock_event;
 SOCK *sock;
 bool same_lan = 0;
 char hostname[MAX_SIZE];



 if (timeout == 0)
 {
  timeout = RUDP_TIMEOUT;
 }
 if (error_code == ((void*)0))
 {
  error_code = &dummy_int;
 }
 if (cancel == ((void*)0))
 {
  cancel = &dummy_bool;
 }
 *error_code = RUDP_ERROR_UNKNOWN;
 if (svc_name == ((void*)0) || ip == ((void*)0))
 {
  return ((void*)0);
 }

 ListenTcpForPopupFirewallDialog();

 giveup_tick = Tick64() + (UINT64)timeout;


 RUDPGetRegisterHostNameByIP(hostname, sizeof(hostname), ip);
 if (GetIP4Ex(&nat_t_ip, hostname, 0, cancel) == 0)
 {
  *error_code = RUDP_ERROR_NAT_T_NO_RESPONSE;
  return ((void*)0);
 }

 if (Tick64() >= giveup_tick)
 {
  *error_code = RUDP_ERROR_TIMEOUT;
  return ((void*)0);
 }
 if (*cancel)
 {
  *error_code = RUDP_ERROR_USER_CANCELED;
  return ((void*)0);
 }

 sock = NewUDP4ForSpecificIp(&nat_t_ip, 0);
 if (sock == ((void*)0))
 {
  *error_code = RUDP_ERROR_UNKNOWN;
  return ((void*)0);
 }
 else
 {
  UINT64 next_send_request_tick = 0;
  INTERRUPT_MANAGER *interrupt = NewInterruptManager();
  UINT64 tran_id = Rand64();
  UINT tmp_size = 65536;
  UCHAR *tmp = Malloc(tmp_size);
  char result_ip_str[MAX_SIZE];
  IP result_ip;
  UINT result_port;
  SOCK *ret = ((void*)0);
  UINT num_tries = 0;
  UINT64 current_cookie = 0;

  AddInterrupt(interrupt, giveup_tick);

  sock_event = NewSockEvent();
  JoinSockToSockEvent(sock, sock_event);


  while (1)
  {
   UINT64 now = Tick64();
   UINT interval;
   UINT r;
   IP src_ip;
   UINT src_port;
   UINT err;
   UINT num_ignore_errors = 0;

   if (now >= giveup_tick)
   {

LABEL_TIMEOUT:
    *error_code = RUDP_ERROR_NAT_T_NO_RESPONSE;
    break;
   }

   if (*cancel)
   {

    *error_code = RUDP_ERROR_USER_CANCELED;
    break;
   }

   err = INFINITE;


   while (err == INFINITE)
   {
    r = RecvFrom(sock, &src_ip, &src_port, tmp, tmp_size);
    if (r == SOCK_LATER)
    {

     break;
    }
    else if (r == 0)
    {
     if (sock->IgnoreRecvErr == 0)
     {

      goto LABEL_TIMEOUT;
     }
     else
     {
      if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
      {
       goto LABEL_TIMEOUT;
      }
     }
    }
    else
    {

     if (CmpIpAddr(&src_ip, &nat_t_ip) == 0 && src_port == UDP_NAT_T_PORT)
     {
      BUF *b = NewBuf();
      PACK *p;

      WriteBuf(b, tmp, r);
      SeekBuf(b, 0, 0);


      p = BufToPack(b);

      if (p != ((void*)0))
      {
       UINT64 cookie = PackGetInt64(p, "cookie");
       if (cookie != 0)
       {
        current_cookie = cookie;
       }


       if (PackGetInt64(p, "tran_id") == tran_id)
       {

        if (PackCmpStr(p, "opcode", "nat_t_connect_request"))
        {
         bool ok = PackGetBool(p, "ok");
         bool multi_candidate = PackGetBool(p, "multi_candidates");

         if (ok)
         {

          PackGetStr(p, "result_ip", result_ip_str, sizeof(result_ip_str));
          StrToIP(&result_ip, result_ip_str);

          result_port = PackGetInt(p, "result_port");

          same_lan = PackGetBool(p, "same_lan");

          if (result_port != 0)
          {
           if (IsZeroIp(&result_ip) == 0)
           {
            if ((sock->IPv6 == 0 && IsIP4(&result_ip)) ||
             (sock->IPv6 && IsIP6(&result_ip)))
            {
             err = RUDP_ERROR_OK;
            }
           }
          }
         }
         else if (multi_candidate)
         {

          err = RUDP_ERROR_NAT_T_TWO_OR_MORE;
         }
         else
         {

          err = RUDP_ERROR_NAT_T_NOT_FOUND;
         }
        }
       }

       FreePack(p);
      }

      FreeBuf(b);
     }
    }
   }

   if (err != INFINITE)
   {
    *error_code = err;
    break;
   }

   if (next_send_request_tick == 0 || now >= next_send_request_tick)
   {

    BUF *b;
    char ip_str[MAX_SIZE];
    PACK *p = NewPack();

    PackAddStr(p, "opcode", "nat_t_connect_request");
    PackAddInt64(p, "tran_id", tran_id);
    IPToStr(ip_str, sizeof(ip_str), ip);
    PackAddStr(p, "dest_ip", ip_str);
    PackAddInt64(p, "cookie", current_cookie);
    if (IsEmptyStr(hint_str) == 0)
    {
     PackAddStr(p, "hint", hint_str);
    }
    if (IsEmptyStr(target_hostname) == 0)
    {
     PackAddStr(p, "target_hostname", target_hostname);
    }
    PackAddStr(p, "svc_name", svc_name);

    PackAddInt(p, "nat_traversal_version", UDP_NAT_TRAVERSAL_VERSION);

    b = PackToBuf(p);
    FreePack(p);

    SendTo(sock, &nat_t_ip, UDP_NAT_T_PORT, b->Buf, b->Size);
    FreeBuf(b);


    next_send_request_tick = now + (UINT64)UDP_NAT_T_CONNECT_INTERVAL * (UINT64)(Power(2, MAX(num_tries, 6)));
    num_tries++;
    AddInterrupt(interrupt, next_send_request_tick);
   }

   interval = GetNextIntervalForInterrupt(interrupt);
   interval = MIN(interval, 50);

   WaitSockEvent(sock_event, interval);
  }

  Free(tmp);
  FreeInterruptManager(interrupt);

  if (*error_code == RUDP_ERROR_OK)
  {
   UINT remain_timeout;
   UINT64 now = Tick64();



   if (now <= giveup_tick)
   {
    remain_timeout = (UINT)(giveup_tick - now);
   }
   else
   {
    remain_timeout = 0;
   }

   remain_timeout = MAX(remain_timeout, 2000);

   if (same_lan)
   {



    ReleaseSockEvent(sock_event);
    ReleaseSock(sock);

    sock = ((void*)0);
    sock_event = ((void*)0);
   }

   ret = NewRUDPClientDirect(svc_name, &result_ip, result_port, error_code, remain_timeout, cancel,
    sock, sock_event, 0, 0);
  }

  if (sock_event != ((void*)0))
  {
   ReleaseSockEvent(sock_event);
  }

  if (sock != ((void*)0))
  {
   if (ret == ((void*)0))
   {
    Disconnect(sock);
   }

   ReleaseSock(sock);
  }

  return ret;
 }
}
