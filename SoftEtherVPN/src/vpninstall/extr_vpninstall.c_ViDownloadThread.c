
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int files ;
typedef int filename_w ;
struct TYPE_8__ {int Path; } ;
typedef TYPE_1__ VI_SETTING_ARCH ;
struct TYPE_9__ {int Buf; int BufSize; scalar_t__ Halt; int hWnd; } ;
typedef TYPE_2__ VI_INSTALL_DLG ;
typedef int VI_FILE ;
struct TYPE_10__ {float FileName; float DestPathW; int SrcPath; } ;
typedef TYPE_3__ VI_DOWNLOAD_FILE ;
typedef size_t UINT ;
struct TYPE_11__ {int DownloadedSettingPathW; int DownloadedInstallerPathW; scalar_t__ DownloadNotRequired; int SettingPath; } ;
typedef int THREAD ;
typedef int IO ;
typedef int HWND ;


 int ConbinePathW (float,int,int ,int *) ;
 int FileClose (int *) ;
 int * FileCreateW (float) ;
 int FileWrite (int *,int ,size_t) ;
 int GetFileNameFromFilePath (float,int,int ) ;
 scalar_t__ IDS_DOWNLOADING ;
 scalar_t__ IDS_DOWNLOADING2 ;
 scalar_t__ IDS_DOWNLOADING3 ;
 scalar_t__ IDS_DOWNLOADSTART ;
 scalar_t__ IDS_DOWNLOAD_ERROR ;
 scalar_t__ IDS_TEMP_ERROR ;
 size_t INFINITE ;
 int IsEmptyStr (int ) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int MB_ICONSTOP ;
 int MakeSafeFileName (float,int,float) ;
 int MsGetMyTempDirW () ;
 int MsgBoxEx (int ,int ,int ,float) ;
 int PostMessageA (int ,int ,int ,int ) ;
 scalar_t__ S_SIZEINFO ;
 scalar_t__ S_STATUS ;
 int StrCpy (int ,int,int ) ;
 int StrToUni (int *,int,float) ;
 int UniFormat (int *,int,int ,float,...) ;
 int UniStrCpy (int ,int,float) ;
 int ViCloseFile (int *) ;
 size_t ViGetFileSize (int *) ;
 TYPE_1__* ViGetSuitableArchForCpu () ;
 int ViInstallDlgCancel (int ) ;
 int ViInstallDlgSetPos (int ,size_t) ;
 int ViInstallDlgSetText (TYPE_2__*,int ,scalar_t__,int *) ;
 int * ViOpenFile (int ) ;
 size_t ViReadFile (int *,int ,int ) ;
 int WM_VI_DOWNLOAD_FINISHED ;
 int Zero (TYPE_3__*,int) ;
 int _U (scalar_t__) ;
 TYPE_4__ setting ;
 scalar_t__ skip ;

void ViDownloadThread(THREAD *thread, void *param)
{
 VI_INSTALL_DLG *d;
 VI_SETTING_ARCH *a;
 HWND hWnd;
 UINT num_files = 2;
 VI_DOWNLOAD_FILE files[2];
 VI_DOWNLOAD_FILE *f;
 UINT i;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 d = (VI_INSTALL_DLG *)param;
 hWnd = d->hWnd;

 Zero(files, sizeof(files));

 a = ViGetSuitableArchForCpu();


 f = &files[0];
 StrCpy(f->SrcPath, sizeof(f->SrcPath), a->Path);


 if (IsEmptyStr(setting.SettingPath) == 0)
 {
  f = &files[1];
  StrCpy(f->SrcPath, sizeof(f->SrcPath), setting.SettingPath);
 }
 else
 {

  num_files = 1;
 }

 for (i = 0;i < num_files;i++)
 {
  bool b = 1;

  if (i == 0 && setting.DownloadNotRequired)
  {
   b = 0;
  }

  if (b)
  {
   wchar_t tmp[MAX_SIZE];
   IO *dest = ((void*)0);
   VI_FILE *down;
   UINT ret;
   UINT totalsize;
   UINT currentsize;
   wchar_t filename_w[MAX_PATH];

   f = &files[i];
   GetFileNameFromFilePath(f->FileName, sizeof(f->FileName), f->SrcPath);
   MakeSafeFileName(f->FileName, sizeof(f->FileName), f->FileName);

   StrToUni(filename_w, sizeof(filename_w), f->FileName);
   ConbinePathW(f->DestPathW, sizeof(f->DestPathW), MsGetMyTempDirW(), filename_w);

   ViInstallDlgSetPos(hWnd, 0);
   UniFormat(tmp, sizeof(tmp), _U(IDS_DOWNLOADSTART+skip), f->FileName);
   ViInstallDlgSetText(d, hWnd, S_STATUS, tmp);

   down = ViOpenFile(f->SrcPath);
   if (down == ((void*)0))
   {
    MsgBoxEx(hWnd, MB_ICONSTOP, _U(IDS_DOWNLOAD_ERROR+skip), f->FileName);

    ViInstallDlgCancel(hWnd);
    return;
   }

   dest = FileCreateW(f->DestPathW);
   if (dest == ((void*)0))
   {
    MsgBoxEx(hWnd, MB_ICONSTOP, _U(IDS_TEMP_ERROR+skip), f->DestPathW);

    ViCloseFile(down);
    ViInstallDlgCancel(hWnd);
    return;
   }

   totalsize = ViGetFileSize(down);
   currentsize = 0;

   UniFormat(tmp, sizeof(tmp), _U(IDS_DOWNLOADING3+skip), f->FileName);
   ViInstallDlgSetText(d, hWnd, S_STATUS, tmp);

   while (1)
   {
    UINT pos = 0;

    if (d->Halt)
    {

     FileClose(dest);
     ViCloseFile(down);
     return;
    }

    UniFormat(tmp, sizeof(tmp), _U(IDS_DOWNLOADING3+skip), f->FileName);

    ViInstallDlgSetText(d, hWnd, IDS_DOWNLOADING3+skip, tmp);
    ret = ViReadFile(down, d->Buf, d->BufSize);

    if (ret == INFINITE)
    {

     MsgBoxEx(hWnd, MB_ICONSTOP, _U(IDS_DOWNLOAD_ERROR+skip), f->FileName);

     FileClose(dest);
     ViCloseFile(down);
     ViInstallDlgCancel(hWnd);

     return;
    }


    currentsize += ret;

    if (totalsize != 0)
    {
     UniFormat(tmp, sizeof(tmp), _U(IDS_DOWNLOADING+skip),
      ((float)totalsize) / 1024.0f / 1024.0f,
      ((float)currentsize) / 1024.0f / 1024.0f);

     pos = (UINT)(((float)currentsize) * 100.0f / ((float)totalsize));
    }
    else
    {
     UniFormat(tmp, sizeof(tmp), _U(IDS_DOWNLOADING2+skip),
      ((float)currentsize) / 1024.0f / 1024.0f);
     pos = (UINT)(((float)currentsize) * 100.0f / (1024.0f * 1024.0f * 10.0f));
    }

    ViInstallDlgSetText(d, hWnd, S_SIZEINFO, tmp);
    ViInstallDlgSetPos(hWnd, pos);

    if (ret == 0)
    {

     break;
    }
    else
    {
     FileWrite(dest, d->Buf, ret);
    }
   }

   ViCloseFile(down);
   FileClose(dest);
  }
 }

 UniStrCpy(setting.DownloadedInstallerPathW, sizeof(setting.DownloadedInstallerPathW),
  files[0].DestPathW);

 if (num_files >= 2)
 {
  UniStrCpy(setting.DownloadedSettingPathW, sizeof(setting.DownloadedSettingPathW),
   files[1].DestPathW);
 }

 PostMessageA(hWnd, WM_VI_DOWNLOAD_FINISHED, 0, 0);
}
