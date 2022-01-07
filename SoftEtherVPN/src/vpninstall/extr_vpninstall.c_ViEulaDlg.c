
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HWND ;


 int D_EULA ;
 scalar_t__ Dialog (int ,int ,int ,int *) ;
 int ViEulaDlgProc ;

bool ViEulaDlg(HWND hWnd, wchar_t *text)
{

 if (text == ((void*)0))
 {
  return 0;
 }

 if (Dialog(hWnd, D_EULA, ViEulaDlgProc, text) == 0)
 {
  return 0;
 }

 return 1;
}
