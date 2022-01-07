
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {scalar_t__ Halt; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;
typedef int UINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int SMTO_BLOCK ;
 int SendMessageTimeout (int ,int ,int ,int ,int ,int,int *) ;
 int WM_VI_SETTEXT ;

void ViInstallDlgSetText(VI_INSTALL_DLG *d, HWND hWnd, UINT id, wchar_t *text)
{
 DWORD value = 0;

 if (d == ((void*)0))
 {
  return;
 }

 if (d->Halt)
 {
  return;
 }

 SendMessageTimeout(hWnd, WM_VI_SETTEXT, id, (LPARAM)text, SMTO_BLOCK, 200, &value);
}
