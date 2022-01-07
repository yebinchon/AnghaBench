
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DownloadStarted; int Halt; int DownloadThread; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;


 int DoEvents (int *) ;
 int ReleaseThread (int ) ;
 scalar_t__ WaitThread (int ,int) ;

void ViDownloadThreadStop(VI_INSTALL_DLG *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 if (d->DownloadStarted == 0)
 {
  return;
 }

 d->DownloadStarted = 0;
 d->Halt = 1;

 while (1)
 {
  if (WaitThread(d->DownloadThread, 50))
  {
   break;
  }

  DoEvents(((void*)0));
 }

 ReleaseThread(d->DownloadThread);
}
