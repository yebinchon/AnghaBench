
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int WPARAM ;
struct TYPE_5__ {int WindowsShutdowning; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;
typedef int UINT ;
typedef scalar_t__ LPARAM ;
typedef int * HWND ;



 int KillTimer (int *,int) ;
 int MAKESURE (int,int ,int) ;
 int P_PROGRESS ;
 int SetPos (int *,int ,int ) ;
 int SetText (int *,int,int *) ;
 int ViInstallDlgOnClose (int *,TYPE_1__*) ;
 int ViInstallDlgOnInit (int *,void*) ;
 int ViInstallDlgOnStart (int *,TYPE_1__*) ;
 int ViInstallProcessStart (int *,TYPE_1__*) ;
UINT ViInstallDlgProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam, void *param)
{
 VI_INSTALL_DLG *d = (VI_INSTALL_DLG *)param;
 UINT pos;
 wchar_t *text;

 if (hWnd == ((void*)0))
 {
  return 0;
 }

 switch (msg)
 {
 case 134:
  ViInstallDlgOnInit(hWnd, param);
  break;

 case 132:
  switch (wParam)
  {
  case 1:
   KillTimer(hWnd, 1);
   ViInstallDlgOnStart(hWnd, d);
   break;
  }
  break;

 case 129:

  pos = (UINT)lParam;
  SetPos(hWnd, P_PROGRESS, MAKESURE(pos, 0, 100));
  break;

 case 128:

  text = (wchar_t *)lParam;
  SetText(hWnd, (UINT)wParam, text);
  break;

 case 131:

  ViInstallDlgOnClose(hWnd, d);
  break;

 case 130:

  ViInstallProcessStart(hWnd, d);
  break;

 case 135:
  switch (wParam)
  {
  case 137:
   ViInstallDlgOnClose(hWnd, d);
   break;
  }
  break;

 case 133:
  d->WindowsShutdowning = 1;
  break;

 case 136:
  break;
 }

 return 0;
}
