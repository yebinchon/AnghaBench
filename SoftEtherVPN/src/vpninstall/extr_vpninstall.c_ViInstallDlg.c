
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int d ;
struct TYPE_4__ {int BufSize; int Buf; } ;
typedef TYPE_1__ VI_INSTALL_DLG ;


 int D_INSTALL ;
 int Dialog (int *,int ,int ,TYPE_1__*) ;
 int Free (int ) ;
 int Malloc (int) ;
 int ViInstallDlgProc ;
 int Zero (TYPE_1__*,int) ;

void ViInstallDlg()
{
 VI_INSTALL_DLG d;

 Zero(&d, sizeof(d));

 d.BufSize = 65535;
 d.Buf = Malloc(d.BufSize);

 Dialog(((void*)0), D_INSTALL, ViInstallDlgProc, &d);

 Free(d.Buf);
}
