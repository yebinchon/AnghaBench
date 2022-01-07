
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp ;
typedef int filename ;
typedef int * HWND ;


 int GetFileNameFromFilePathW (char*,int,char*) ;
 scalar_t__ IDOK ;
 scalar_t__ IDS_SIGN_WARNING ;
 scalar_t__ IDS_SIGN_WARNING_TITLE ;
 int MAX_PATH ;
 int MB_DEFBUTTON2 ;
 int MB_ICONEXCLAMATION ;
 int MB_OKCANCEL ;
 scalar_t__ MessageBoxW (int *,char*,char*,int) ;
 scalar_t__ MsCheckFileDigitalSignatureW (int *,char*,int*) ;
 char* _U (scalar_t__) ;
 scalar_t__ skip ;
 int swprintf (char*,int,char*,char*,char*,char*) ;

bool ViCheckExeSign(HWND hWnd, wchar_t *exew)
{
 wchar_t tmp[2048];
 bool danger = 1;
 wchar_t *warningMessage = _U(IDS_SIGN_WARNING+skip);
 wchar_t *warningMessageTitle = _U(IDS_SIGN_WARNING_TITLE+skip);

 if (hWnd == ((void*)0) || exew == ((void*)0))
 {
  return 0;
 }

 if (MsCheckFileDigitalSignatureW(hWnd, exew, &danger))
 {
  if (danger == 0)
  {

   return 1;
  }
  else
  {
   wchar_t filename[MAX_PATH];

   GetFileNameFromFilePathW(filename, sizeof(filename), exew);


   swprintf(tmp, sizeof(tmp) / 2, warningMessage,
    filename, filename, filename);

   if (MessageBoxW(hWnd, tmp, warningMessageTitle,
    MB_OKCANCEL | MB_DEFBUTTON2 | MB_ICONEXCLAMATION) == IDOK)
   {
    return 1;
   }

   return 0;
  }
 }
 else
 {

  return 0;
 }
}
