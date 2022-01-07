
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hWnd; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;
typedef int * HWND ;


 int DlgFont (int *,scalar_t__,int,int) ;
 scalar_t__ IDCANCEL ;
 int IDI_MAIN ;
 scalar_t__ IDS_DLG_TITLE ;
 scalar_t__ IDS_INSTALL_CANCEL ;
 scalar_t__ IDS_INSTALL_DLG__STATUS_INIT ;
 int P_PROGRESS ;
 scalar_t__ S_STATUS ;
 scalar_t__ S_TITLE ;
 int SetIcon (int *,int ,int ) ;
 int SetPos (int *,int ,int ) ;
 int SetRange (int *,int ,int ,int) ;
 int SetText (int *,scalar_t__,int ) ;
 int SetTimer (int *,int,int,int *) ;
 int _U (scalar_t__) ;
 scalar_t__ skip ;

void ViInstallDlgOnInit(HWND hWnd, VI_INSTALL_DLG *d)
{

 if (hWnd == ((void*)0) || d == ((void*)0))
 {
  return;
 }

 d->hWnd = hWnd;

 SetIcon(hWnd, 0, IDI_MAIN);

 SetText(hWnd, 0, _U(IDS_DLG_TITLE+skip));
 SetText(hWnd, S_TITLE, _U(IDS_DLG_TITLE+skip));

 SetText(hWnd, S_STATUS, _U(IDS_INSTALL_DLG__STATUS_INIT+skip));
 SetText(hWnd, IDCANCEL, _U(IDS_INSTALL_CANCEL+skip));

 DlgFont(hWnd, S_TITLE+skip, 12, 1);
 SetRange(hWnd, P_PROGRESS, 0, 100);
 SetPos(hWnd, P_PROGRESS, 0);

 SetTimer(hWnd, 1, 22, ((void*)0));
}
