
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Thread; } ;
struct TYPE_7__ {scalar_t__ Param; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ CNC_STATUS_PRINTER_WINDOW_PARAM ;


 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseThread (int ) ;
 int WaitThread (int ,int ) ;

void CncStatusPrinterWindowStop(SOCK *s)
{
 CNC_STATUS_PRINTER_WINDOW_PARAM *param;

 if (s == ((void*)0))
 {
  return;
 }

 param = (CNC_STATUS_PRINTER_WINDOW_PARAM *)s->Param;


 Disconnect(s);


 WaitThread(param->Thread, INFINITE);
 ReleaseThread(param->Thread);

 Free(param);
 ReleaseSock(s);
}
