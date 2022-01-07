
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int instdir ;
typedef int info ;
typedef int hamcore ;
typedef int filename ;
typedef int exe ;
typedef int arg ;
struct TYPE_10__ {int CurrentInstalledPathW; int VpnCMgrExeFileName; scalar_t__ CurrentInstalled; int Build; } ;
typedef TYPE_1__ VI_SETTING_ARCH ;
struct TYPE_11__ {int NoClose; int WindowsShutdowning; } ;
typedef TYPE_2__ VI_INSTALL_DLG ;
struct TYPE_13__ {int DownloadNotRequired; int DownloadedSettingPathW; scalar_t__ NormalMode; scalar_t__ WebMode; int * DownloadedInstallerPathW; } ;
struct TYPE_12__ {int cbSize; char* lpVerb; char* lpParameters; int * hProcess; int nShow; int fMask; int * lpFile; } ;
typedef TYPE_3__ SHELLEXECUTEINFOW ;
typedef int * HWND ;
typedef int * HANDLE ;


 int Close (int *) ;
 int CloseHandle (int *) ;
 int ConbinePath (char*,int,char*,char*) ;
 int ConbinePathW (int *,int,int ,int *) ;
 int DoEvents (int *) ;
 int Hide (int *,int ) ;
 int IDCANCEL ;
 scalar_t__ IDS_INSTALLSTART ;
 scalar_t__ IDS_INSTALLSTART_ERROR ;
 int MAX_PATH ;
 int MB_ICONSTOP ;
 int MsIsServiceRunning (char*) ;
 int * MsRunAsUserExW (int *,int *,int) ;
 int MsStartService (char*) ;
 int MsgBox (int *,int ,int ) ;
 int P_PROGRESS ;
 int SEE_MASK_NOCLOSEPROCESS ;
 int SW_SHOWNORMAL ;
 int S_SIZEINFO ;
 int S_STATUS ;
 int SetPos (int *,int ,int) ;
 int SetText (int *,int ,int ) ;
 int ShellExecuteExW (TYPE_3__*) ;
 int StrToUni (int *,int,int ) ;
 int SwWaitForVpnClientPortReady (int ) ;
 int UniFormat (int *,int,char*,char*,...) ;
 int UniIsEmptyStr (int ) ;
 int ViCheckExeSign (int *,int *) ;
 int ViGenerateVpnSMgrTempDirName (char*,int,int ) ;
 TYPE_1__* ViGetSuitableArchForCpu () ;
 int ViLoadCurrentInstalledStatusForArch (TYPE_1__*) ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int *,int) ;
 int Zero (TYPE_3__*,int) ;
 int _U (scalar_t__) ;
 TYPE_4__ setting ;
 scalar_t__ skip ;
 int sleep_before_exit ;

void ViInstallProcessStart(HWND hWnd, VI_INSTALL_DLG *d)
{
 wchar_t *exew;
 bool ok;
 char instdir[MAX_PATH];
 char hamcore[MAX_PATH];

 if (hWnd == ((void*)0) || d == ((void*)0))
 {
  return;
 }

 ViGenerateVpnSMgrTempDirName(instdir, sizeof(instdir), ViGetSuitableArchForCpu()->Build);
 ConbinePath(hamcore, sizeof(hamcore), instdir, "hamcore.se2");

 exew = setting.DownloadedInstallerPathW;
 d->NoClose = 1;

 Hide(hWnd, IDCANCEL);
 SetPos(hWnd, P_PROGRESS, 100);
 Hide(hWnd, P_PROGRESS);
 Hide(hWnd, S_SIZEINFO);
 SetText(hWnd, S_STATUS, _U(IDS_INSTALLSTART+skip));

 ok = 1;

 if (setting.DownloadNotRequired == 0)
 {
  if (setting.WebMode && ViCheckExeSign(hWnd, exew) == 0)
  {

   ok = 0;
  }
  else
  {

   HANDLE hProcess;
   SHELLEXECUTEINFOW info;


   Zero(&info, sizeof(info));
   info.cbSize = sizeof(info);
   info.lpVerb = L"open";
   info.lpFile = exew;
   info.fMask = SEE_MASK_NOCLOSEPROCESS;
   info.lpParameters = L"/HIDESTARTCOMMAND:1 /DISABLEAUTOIMPORT:1 /ISWEBINSTALLER:1";
   info.nShow = SW_SHOWNORMAL;
   if (ShellExecuteExW(&info) == 0)
   {
    MsgBox(hWnd, MB_ICONSTOP, _U(IDS_INSTALLSTART_ERROR+skip));
    ok = 0;
   }
   else
   {
    hProcess = info.hProcess;


    while (1)
    {
     if (WaitForSingleObject(hProcess, 50) != WAIT_TIMEOUT)
     {
      break;
     }

     DoEvents(hWnd);
    }
    CloseHandle(hProcess);
   }
  }
 }

 if (ok && d->WindowsShutdowning == 0)
 {
  VI_SETTING_ARCH *a = ViGetSuitableArchForCpu();
  wchar_t arg[MAX_PATH];
  wchar_t exe[MAX_PATH];
  char *arg1 = "/easy";

  Hide(hWnd, 0);

  if (setting.NormalMode)
  {
   arg1 = "/normal";
  }


  if (MsIsServiceRunning("vpnclient") == 0)
  {
   MsStartService("vpnclient");
  }


  SwWaitForVpnClientPortReady(0);

  if (UniIsEmptyStr(setting.DownloadedSettingPathW) == 0)
  {

   UniFormat(arg, sizeof(arg), L"%S \"%s\"", arg1, setting.DownloadedSettingPathW);
  }
  else
  {

   UniFormat(arg, sizeof(arg), L"%S", arg1);
  }


  ViLoadCurrentInstalledStatusForArch(a);

  if (a->CurrentInstalled)
  {
   HANDLE h;
   wchar_t filename[MAX_PATH];

   StrToUni(filename, sizeof(filename), a->VpnCMgrExeFileName);

   ConbinePathW(exe, sizeof(exe), a->CurrentInstalledPathW, filename);


   h = MsRunAsUserExW(exe, arg, 0);
   if (h != ((void*)0))
   {
    if (UniIsEmptyStr(setting.DownloadedSettingPathW) == 0)
    {
     sleep_before_exit = 1;
    }

    CloseHandle(h);
   }
  }
 }

 d->NoClose = 0;
 Close(hWnd);
}
