
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; void* lpstrFileTitle; void* lpstrFile; int hwndOwner; } ;
typedef void* PTSTR ;
typedef int HWND ;
typedef int BOOL ;


 int GetOpenFileName (TYPE_1__*) ;
 int OFN_HIDEREADONLY ;
 TYPE_1__ ofn ;

BOOL PngFileOpenDlg (HWND hwnd, PTSTR pstrFileName, PTSTR pstrTitleName)
{
    ofn.hwndOwner = hwnd;
    ofn.lpstrFile = pstrFileName;
    ofn.lpstrFileTitle = pstrTitleName;
    ofn.Flags = OFN_HIDEREADONLY;

    return GetOpenFileName (&ofn);
}
