
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int PostMessageA (int ,int ,int ,int ) ;
 int WM_VI_CANCEL ;

void ViInstallDlgCancel(HWND hWnd)
{
 PostMessageA(hWnd, WM_VI_CANCEL, 0, 0);
}
