
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DialogCanceling; scalar_t__ NoClose; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;
typedef int * HWND ;


 int Disable (int *,int ) ;
 int EndDialog (int *,int ) ;
 int IDCANCEL ;
 int ViDownloadThreadStop (TYPE_1__*) ;

void ViInstallDlgOnClose(HWND hWnd, VI_INSTALL_DLG *d)
{

 if (hWnd == ((void*)0) || d == ((void*)0))
 {
  return;
 }

 if (d->DialogCanceling)
 {
  return;
 }
 if (d->NoClose)
 {
  return;
 }

 d->DialogCanceling = 1;


 Disable(hWnd, IDCANCEL);


 ViDownloadThreadStop(d);


 EndDialog(hWnd, 0);
}
