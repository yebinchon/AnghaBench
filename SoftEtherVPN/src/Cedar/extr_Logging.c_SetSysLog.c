
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int lock; int NextPollIp; int HostName; scalar_t__ DestPort; int DestIp; } ;
typedef TYPE_1__ SLOG ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int GetIP (int *,char*) ;
 scalar_t__ IsZeroIp (int *) ;
 int Lock (int ) ;
 int SYSLOG_POLL_IP_INTERVAL ;
 int SYSLOG_POLL_IP_INTERVAL_NG ;
 scalar_t__ SYSLOG_PORT ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ Tick64 () ;
 int Unlock (int ) ;
 int Zero (int *,int) ;

void SetSysLog(SLOG *g, char *hostname, UINT port)
{
 IP ip;

 if (g == ((void*)0))
 {
  return;
 }
 if (port == 0)
 {
  port = SYSLOG_PORT;
 }

 if (hostname == ((void*)0))
 {
  hostname = "";
 }

 Zero(&ip, sizeof(IP));
 GetIP(&ip, hostname);

 Lock(g->lock);
 {
  Copy(&g->DestIp, &ip, sizeof(IP));
  g->DestPort = port;
  StrCpy(g->HostName, sizeof(g->HostName), hostname);
  g->NextPollIp = Tick64() + IsZeroIp(&ip) ? SYSLOG_POLL_IP_INTERVAL_NG : SYSLOG_POLL_IP_INTERVAL;
 }
 Unlock(g->lock);
}
