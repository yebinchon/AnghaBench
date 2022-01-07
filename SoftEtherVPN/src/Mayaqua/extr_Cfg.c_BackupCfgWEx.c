
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int fullpath ;
typedef int filename ;
typedef int dirname ;
typedef int datestr ;
typedef int* UINT ;
struct TYPE_6__ {int* LastSavedDateStr; } ;
struct TYPE_5__ {int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int FOLDER ;
typedef TYPE_2__ CFG_RW ;


 int CfgSaveW (int *,int*) ;
 int* INFINITE ;
 scalar_t__ IsFileExistsW (int*) ;
 int LocalTime (TYPE_1__*) ;
 int MAX_PATH ;
 int MakeDirW (int*) ;
 int UniFormat (int*,int,char*,int*,...) ;
 scalar_t__ UniStrCmpi (int*,int*) ;
 int UniStrCpy (int*,int,int*) ;

void BackupCfgWEx(CFG_RW *rw, FOLDER *f, wchar_t *original, UINT revision_number)
{
 wchar_t dirname[MAX_PATH];
 wchar_t filename[MAX_PATH];
 wchar_t fullpath[MAX_PATH];
 wchar_t datestr[MAX_PATH];
 SYSTEMTIME st;

 if (f == ((void*)0) || rw == ((void*)0))
 {
  return;
 }


 UniFormat(dirname, sizeof(dirname), L"@backup.%s", original[0] == L'@' ? original + 1 : original);


 LocalTime(&st);
 UniFormat(datestr, sizeof(datestr), L"%04u%02u%02u%02u_%s",
  st.wYear, st.wMonth, st.wDay, st.wHour, original[0] == L'@' ? original + 1 : original);

 if (revision_number == INFINITE)
 {
  UniStrCpy(filename, sizeof(filename), datestr);
 }
 else
 {
  UniFormat(filename, sizeof(filename), L"%08u_%s",
   revision_number, original[0] == L'@' ? original + 1 : original);
 }


 if (UniStrCmpi(datestr, rw->LastSavedDateStr) == 0)
 {
  return;
 }

 UniStrCpy(rw->LastSavedDateStr, sizeof(rw->LastSavedDateStr), datestr);


 if (IsFileExistsW(filename))
 {
  return;
 }


 MakeDirW(dirname);


 UniFormat(fullpath, sizeof(fullpath), L"%s/%s", dirname, filename);
 CfgSaveW(f, fullpath);
}
