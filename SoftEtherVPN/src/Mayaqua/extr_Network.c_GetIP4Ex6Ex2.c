
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hostname ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {char* HostName; int IPv6; int Ok; int Ip; scalar_t__ Timeout; int Ref; } ;
typedef int THREAD ;
typedef int IP ;
typedef TYPE_1__ GETIP_THREAD_PARAM ;


 int Copy (int *,int *,int) ;
 int Debug (char*,scalar_t__,...) ;
 scalar_t__ DetectFletsType () ;
 scalar_t__ FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE ;
 scalar_t__ FLETS_DETECT_TYPE_EAST_NGN_PRIVATE ;
 scalar_t__ FLETS_DETECT_TYPE_WEST_NGN_PRIVATE ;
 int * FLETS_NGN_EAST_DNS_PROXY_HOSTNAME ;
 int * FLETS_NGN_WEST_DNS_PROXY_HOSTNAME ;
 scalar_t__ GetCurrentGetIpThreadNum () ;
 scalar_t__ GetGetIpThreadMaxNum () ;
 int GetIP4Ex6ExThread ;
 scalar_t__ GetIPViaDnsProxyForJapanFlets (int *,char*,int,int ,int*,int *) ;
 scalar_t__ INFINITE ;
 int Inc (int ) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 scalar_t__ IsUseDnsProxy () ;
 int IsZeroIp (int *) ;
 scalar_t__ MIN (scalar_t__,int) ;
 int NewRef () ;
 int * NewThread (int ,TYPE_1__*) ;
 scalar_t__ QueryDnsCache (int *,char*) ;
 int ReleaseGetIPThreadParam (TYPE_1__*) ;
 int ReleaseThread (int *) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 int SleepThread (scalar_t__) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrToIP (int *,char*) ;
 scalar_t__ TIMEOUT_GETIP ;
 scalar_t__ Tick64 () ;
 scalar_t__ WaitThread (int *,scalar_t__) ;
 int WaitThreadInit (int *) ;
 int Zero (char*,int) ;
 TYPE_1__* ZeroMalloc (int) ;
 int getip_thread_counter ;

bool GetIP4Ex6Ex2(IP *ip, char *hostname_arg, UINT timeout, bool ipv6, bool *cancel, bool only_direct_dns)
{
 GETIP_THREAD_PARAM *p;
 THREAD *t;
 bool ret = 0;
 UINT64 start_tick = 0;
 UINT64 end_tick = 0;
 UINT64 spent_time = 0;
 UINT64 now;
 UINT n;
 bool use_dns_proxy = 0;
 char hostname[260];
 UINT i;
 bool timed_out;

 if (ip == ((void*)0) || hostname_arg == ((void*)0))
 {
  return 0;
 }
 if (timeout == 0)
 {
  timeout = TIMEOUT_GETIP;
 }

 Zero(hostname, sizeof(hostname));
 StrCpy(hostname, sizeof(hostname), hostname_arg);

 i = SearchStrEx(hostname, "/", 0, 1);
 if (i != INFINITE)
 {
  hostname[i] = 0;
 }

 if (ipv6 == 0)
 {
  IP ip2;

  if (StrToIP(&ip2, hostname) && IsZeroIp(&ip2) == 0)
  {
   if (IsIP4(&ip2))
   {

    Copy(ip, &ip2, sizeof(IP));
    return 1;
   }
   else
   {

    return 0;
   }
  }
 }
 else
 {
  IP ip2;

  if (StrToIP(&ip2, hostname) && IsZeroIp(&ip2) == 0)
  {
   if (IsIP6(&ip2))
   {

    Copy(ip, &ip2, sizeof(IP));
    return 1;
   }
   else
   {

    return 0;
   }
  }
 }

 if (only_direct_dns == 0)
 {
  if (ipv6 == 0)
  {
   if (IsUseDnsProxy())
   {
    use_dns_proxy = 1;
   }
  }
 }



 start_tick = Tick64();
 end_tick = start_tick + (UINT64)timeout;

 n = 0;

 timed_out = 0;

 while (1)
 {
  UINT64 now = Tick64();
  UINT64 remain;
  UINT remain32;

  if (GetGetIpThreadMaxNum() > GetCurrentGetIpThreadNum())
  {

   break;
  }

  if (now >= end_tick)
  {

   timed_out = 1;
   break;
  }

  if (cancel != ((void*)0) && (*cancel))
  {

   timed_out = 1;
   break;
  }

  remain = end_tick - now;
  remain32 = MIN((UINT)remain, 100);

  SleepThread(remain32);
  n++;
 }

 now = Tick64();
 spent_time = now - start_tick;

 if (n == 0)
 {
  spent_time = 0;
 }

 if ((UINT)spent_time >= timeout)
 {
  timed_out = 1;
 }

 if (timed_out)
 {
  IP ip2;


  if (QueryDnsCache(&ip2, hostname))
  {
   ret = 1;

   Copy(ip, &ip2, sizeof(IP));
  }

  Debug("GetIP4Ex6Ex2: Worker thread quota exceeded: max=%u current=%u\n",
   GetGetIpThreadMaxNum(), GetCurrentGetIpThreadNum());

  return ret;
 }


 Inc(getip_thread_counter);

 if (spent_time != 0)
 {
  Debug("GetIP4Ex6Ex2: Waited for %u msecs to create a worker thread.\n",
   spent_time);
 }

 timeout -= (UINT)spent_time;

 p = ZeroMalloc(sizeof(GETIP_THREAD_PARAM));
 p->Ref = NewRef();
 StrCpy(p->HostName, sizeof(p->HostName), hostname);
 p->IPv6 = ipv6;
 p->Timeout = timeout;
 p->Ok = 0;

 t = NewThread(GetIP4Ex6ExThread, p);
 WaitThreadInit(t);

 if (cancel == ((void*)0))
 {
  WaitThread(t, timeout);
 }
 else
 {
  start_tick = Tick64();
  end_tick = start_tick + (UINT64)timeout;

  while (1)
  {
   UINT64 now = Tick64();
   UINT64 remain;
   UINT remain32;

   if (*cancel)
   {
    break;
   }

   if (now >= end_tick)
   {
    break;
   }

   remain = end_tick - now;
   remain32 = MIN((UINT)remain, 100);

   if (WaitThread(t, remain32))
   {
    break;
   }
  }
 }

 ReleaseThread(t);

 if (p->Ok)
 {
  ret = 1;
  Copy(ip, &p->Ip, sizeof(IP));
 }
 else
 {
  IP ip2;
  if (QueryDnsCache(&ip2, hostname))
  {
   ret = 1;

   Copy(ip, &ip2, sizeof(IP));
  }
 }


 ReleaseGetIPThreadParam(p);

 return ret;
}
