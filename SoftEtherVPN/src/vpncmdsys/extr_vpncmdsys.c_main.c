
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int args ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 int ExecProcess (char*,int*) ;
 int* GetCommandLineW () ;
 int HKEY_LOCAL_MACHINE ;
 int LC_ALL ;
 int MAX_SIZE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKey (int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,int*,int ,int*) ;
 int VPNCMD_BOOTSTRAP_REG_KEYNAME ;
 int VPNCMD_BOOTSTRAP_REG_VALUENAME_PATH ;
 int printf (char*,char*) ;
 int ret_code ;
 int setlocale (int ,char*) ;
 int strcpy (char*,char*) ;
 int swprintf (int*,int,char*,char*,int*) ;

int main(int argc, char *argv[])
{
 HKEY hKey;
 bool ok = 0;
 char error[MAX_SIZE];
 wchar_t *current_args;
 bool flag = 0;
 bool break_now = 0;

 error[0] = 0;

 setlocale(LC_ALL, "");

 current_args = GetCommandLineW();


 while (1)
 {
  switch (*current_args)
  {
  case L'\"':
   if (flag == 0)
   {
    flag = 1;
   }
   else
   {
    flag = 0;
   }
   break;

  case L' ':
  case L'\t':
  case 0:
   if (flag == 0)
   {
    break_now = 1;
   }
   break;
  }
  if (break_now)
  {
   break;
  }
  current_args++;
 }

 while (1)
 {
  if (*current_args == L' ' || *current_args == L'\t')
  {
   current_args++;
  }
  else
  {
   break;
  }
 }

 strcpy(error, "VPN Command Line Tools is not Installed.\nPlease reinstall programs.");


 if (RegOpenKey(HKEY_LOCAL_MACHINE, VPNCMD_BOOTSTRAP_REG_KEYNAME, &hKey) == 0)
 {
  DWORD type = REG_SZ;
  DWORD size = 4096;
  char buf[4096];

  if (RegQueryValueEx(hKey, VPNCMD_BOOTSTRAP_REG_VALUENAME_PATH, ((void*)0), &type, (LPBYTE)buf, &size) == 0)
  {
   wchar_t args[MAX_SIZE];

   swprintf(args, sizeof(args), L"\"%S\" %s", buf, current_args);
   if (ExecProcess(buf, args) == 0)
   {

   }
   else
   {
    ok = 1;
   }
  }

  RegCloseKey(hKey);
 }

 if (ok == 0)
 {
  printf("%s\n", error);
 }

 return ret_code;
}
