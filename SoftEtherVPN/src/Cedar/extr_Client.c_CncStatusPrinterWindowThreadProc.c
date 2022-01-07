
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Session; TYPE_1__* Thread; int * Sock; } ;
struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ THREAD ;
typedef int SOCK ;
typedef int PACK ;
typedef TYPE_2__ CNC_STATUS_PRINTER_WINDOW_PARAM ;


 int AddRef (int ) ;
 int FreePack (int *) ;
 int NoticeThreadInit (TYPE_1__*) ;
 int * RecvPack (int *) ;
 int StopSessionEx (int ,int) ;

void CncStatusPrinterWindowThreadProc(THREAD *thread, void *param)
{
 CNC_STATUS_PRINTER_WINDOW_PARAM *pp;
 SOCK *sock;
 PACK *p;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 pp = (CNC_STATUS_PRINTER_WINDOW_PARAM *)param;
 sock = pp->Sock;
 pp->Thread = thread;
 AddRef(pp->Thread->ref);

 NoticeThreadInit(thread);

 p = RecvPack(sock);
 if (p != ((void*)0))
 {

  StopSessionEx(pp->Session, 1);

  FreePack(p);
 }
}
