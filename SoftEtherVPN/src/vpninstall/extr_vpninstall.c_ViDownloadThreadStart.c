
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DownloadStarted; int DownloadThread; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;


 int NewThread (int ,TYPE_1__*) ;
 int ViDownloadThread ;

void ViDownloadThreadStart(VI_INSTALL_DLG *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 d->DownloadStarted = 1;
 d->DownloadThread = NewThread(ViDownloadThread, d);
}
