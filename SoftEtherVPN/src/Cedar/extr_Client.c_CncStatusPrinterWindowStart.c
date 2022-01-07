
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* Session; TYPE_3__* Sock; } ;
struct TYPE_16__ {TYPE_2__* Account; } ;
struct TYPE_15__ {TYPE_5__* Param; } ;
struct TYPE_14__ {TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int AccountName; } ;
typedef int THREAD ;
typedef TYPE_3__ SOCK ;
typedef TYPE_4__ SESSION ;
typedef int PACK ;
typedef TYPE_5__ CNC_STATUS_PRINTER_WINDOW_PARAM ;


 TYPE_3__* CncConnect () ;
 int CncStatusPrinterWindowThreadProc ;
 int FreePack (int *) ;
 int * NewPack () ;
 int * NewThread (int ,TYPE_5__*) ;
 int PackAddStr (int *,char*,char*) ;
 int PackAddUniStr (int *,char*,int ) ;
 int ReleaseSock (TYPE_3__*) ;
 int ReleaseThread (int *) ;
 int SendPack (TYPE_3__*,int *) ;
 int WaitThreadInit (int *) ;
 TYPE_5__* ZeroMalloc (int) ;

SOCK *CncStatusPrinterWindowStart(SESSION *s)
{
 SOCK *sock;
 PACK *p;
 THREAD *t;
 CNC_STATUS_PRINTER_WINDOW_PARAM *param;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 sock = CncConnect();

 if (sock == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "function", "status_printer");
 PackAddUniStr(p, "account_name", s->Account->ClientOption->AccountName);

 if (SendPack(sock, p) == 0)
 {
  FreePack(p);
  ReleaseSock(sock);

  return ((void*)0);
 }

 FreePack(p);

 param = ZeroMalloc(sizeof(CNC_STATUS_PRINTER_WINDOW_PARAM));
 param->Sock = sock;
 param->Session = s;

 sock->Param = param;

 t = NewThread(CncStatusPrinterWindowThreadProc, param);
 WaitThreadInit(t);

 ReleaseThread(t);

 return sock;
}
