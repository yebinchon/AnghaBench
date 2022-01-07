
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int exe_path ;
typedef scalar_t__ UINT ;


 scalar_t__ CEDAR_VERSION_BUILD ;
 int FileCopy (char*,char*) ;
 int Format (char*,int,char*,int ) ;
 int GetExeName (char*,int) ;
 scalar_t__ INFINITE ;
 scalar_t__ Is64 () ;
 int IsFile (char*) ;
 scalar_t__ IsIA64 () ;
 scalar_t__ IsX64 () ;
 int MAX_PATH ;
 void* MsDisableWow64FileSystemRedirection () ;
 int MsGetSystem32Dir () ;
 int MsGetWindowsDir () ;
 int MsIs64BitWindows () ;
 scalar_t__ MsIsAdmin () ;
 scalar_t__ MsIsNt () ;
 int MsRegIsValue (int ,int ,int ) ;
 scalar_t__ MsRegReadInt (int ,int ,int ) ;
 int MsRegWriteInt (int ,int ,int ,scalar_t__) ;
 int MsRegWriteIntEx2 (int ,int ,int ,scalar_t__,int,int) ;
 int MsRegWriteStr (int ,int ,int ,char*) ;
 int MsRegWriteStrEx2 (int ,int ,int ,char*,int,int) ;
 int MsRestoreWow64FileSystemRedirection (void*) ;
 int REG_LOCAL_MACHINE ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 char* VPNCMD_BOOTSTRAP_FILENAME ;
 char* VPNCMD_BOOTSTRAP_FILENAME_IA64 ;
 char* VPNCMD_BOOTSTRAP_FILENAME_X64 ;
 int VPNCMD_BOOTSTRAP_REG_KEYNAME ;
 int VPNCMD_BOOTSTRAP_REG_VALUENAME_PATH ;
 int VPNCMD_BOOTSTRAP_REG_VALUENAME_VER ;

void VpnCmdInitBootPath()
{
}
