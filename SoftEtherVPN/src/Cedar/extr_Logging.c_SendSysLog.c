
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ NextPollIp; scalar_t__ DestPort; int lock; int DestIp; int Udp; int HostName; } ;
typedef TYPE_1__ SLOG ;
typedef int IP ;


 int CalcUniToUtf8 (int *) ;
 int Copy (int *,int *,int) ;
 int Free (int *) ;
 scalar_t__ GetIP (int *,int ) ;
 int IsZeroIp (int *) ;
 int Lock (int ) ;
 scalar_t__ SYSLOG_POLL_IP_INTERVAL ;
 scalar_t__ SYSLOG_POLL_IP_INTERVAL_NG ;
 int SendTo (int ,int *,scalar_t__,int *,int) ;
 scalar_t__ Tick64 () ;
 int UniToUtf8 (int *,int,int *) ;
 int Unlock (int ) ;
 int * ZeroMalloc (int) ;

void SendSysLog(SLOG *g, wchar_t *str)
{
 UCHAR *buf;
 UINT buf_size;

 if (g == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 buf_size = CalcUniToUtf8(str);
 buf = ZeroMalloc(buf_size);
 UniToUtf8(buf, buf_size, str);

 if (buf_size >= 1024)
 {
  buf_size = 1023;
 }

 Lock(g->lock);
 {
  if (Tick64() >= g->NextPollIp)
  {
   IP ip;

   if (GetIP(&ip, g->HostName))
   {
    g->NextPollIp = Tick64() + SYSLOG_POLL_IP_INTERVAL;
    Copy(&g->DestIp, &ip, sizeof(IP));
   }
   else
   {
    g->NextPollIp = Tick64() + SYSLOG_POLL_IP_INTERVAL_NG;
   }
  }

  if (g->DestPort != 0 && IsZeroIp(&g->DestIp) == 0)
  {
   SendTo(g->Udp, &g->DestIp, g->DestPort, buf, buf_size);
  }
 }
 Unlock(g->lock);

 Free(buf);
}
