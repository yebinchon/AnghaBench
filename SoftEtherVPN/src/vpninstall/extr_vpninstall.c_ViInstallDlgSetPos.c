
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;


 int PostMessage (int ,int ,int ,int ) ;
 int WM_VI_SETPOS ;

void ViInstallDlgSetPos(HWND hWnd, UINT pos)
{
 PostMessage(hWnd, WM_VI_SETPOS, 0, pos);
}
