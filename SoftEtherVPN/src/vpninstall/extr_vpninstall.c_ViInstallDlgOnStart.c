
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VI_INSTALL_DLG ;
typedef int * HWND ;


 int ViDownloadThreadStart (int *) ;

void ViInstallDlgOnStart(HWND hWnd, VI_INSTALL_DLG *d)
{

 if (hWnd == ((void*)0) || d == ((void*)0))
 {
  return;
 }


 ViDownloadThreadStart(d);
}
