
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LPARAM ;
typedef int * HWND ;


 int Center (int *) ;
 int Close (int *) ;
 int DlgFont (int *,int,int ,int) ;
 int EM_SETSEL ;
 int E_EULA ;
 int EndDialog (int *,int) ;
 int Focus (int *,int) ;


 scalar_t__ IDS_DLG_TITLE ;
 scalar_t__ IDS_EULA_AGREE ;
 scalar_t__ IDS_EULA_DISAGREE ;
 scalar_t__ IDS_EULA_NOTICE1 ;
 scalar_t__ IDS_EULA_NOTICE2 ;
 scalar_t__ IDS_EULA_NOTICE3 ;
 int S_BOLD ;
 int S_EULA_NOTICE1 ;
 int S_EULA_NOTICE3 ;
 int SendMsg (int *,int,int ,int ,int ) ;
 int SetText (int *,int,int *) ;



 int * _U (scalar_t__) ;
 scalar_t__ skip ;

UINT ViEulaDlgProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam, void *param)
{
 wchar_t *text = (wchar_t *)param;

 if (hWnd == ((void*)0))
 {
  return 0;
 }

 switch (msg)
 {
 case 128:
  SetText(hWnd, 0, _U(IDS_DLG_TITLE+skip));
  SetText(hWnd, S_EULA_NOTICE1, _U(IDS_EULA_NOTICE1+skip));
  SetText(hWnd, S_BOLD, _U(IDS_EULA_NOTICE2+skip));
  SetText(hWnd, S_EULA_NOTICE3, _U(IDS_EULA_NOTICE3+skip));
  SetText(hWnd, 131, _U(IDS_EULA_AGREE+skip));
  SetText(hWnd, 132, _U(IDS_EULA_DISAGREE+skip));

  DlgFont(hWnd, S_BOLD, 0, 1);
  SetText(hWnd, E_EULA, text);
  Focus(hWnd, E_EULA);
  SendMsg(hWnd, E_EULA, EM_SETSEL, 0, 0);
  Center(hWnd);
  break;

 case 129:
  switch (wParam)
  {
  case 131:
   EndDialog(hWnd, 1);
   break;

  case 132:
   Close(hWnd);
   break;
  }
  break;

 case 130:
  EndDialog(hWnd, 0);
  break;
 }

 return 0;
}
