
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int steamPath ;
typedef int command ;
typedef scalar_t__ LSTATUS ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int CP_UTF8 ;
 int Discord_RegisterW (int*,int*) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int*,int) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int *,int*) ;
 int StringCbPrintfW (int*,int,char*,int*,int*) ;
 int fprintf (int ,char*) ;
 int stderr ;

void Discord_RegisterSteamGame(
      const char* applicationId,
      const char* steamId)
{
   DWORD pathChars, pathBytes, i;
   HKEY key;
   wchar_t steamPath[MAX_PATH];
   wchar_t command[1024];
   wchar_t appId[32];
   wchar_t wSteamId[32];
   MultiByteToWideChar(CP_UTF8, 0, applicationId, -1, appId, 32);
   MultiByteToWideChar(CP_UTF8, 0, steamId, -1, wSteamId, 32);
   LSTATUS status = RegOpenKeyExW(HKEY_CURRENT_USER,
         L"Software\\Valve\\Steam", 0, KEY_READ, &key);
   if (status != ERROR_SUCCESS)
   {
      fprintf(stderr, "Error opening Steam key\n");
      return;
   }

   pathBytes = sizeof(steamPath);
   status = RegQueryValueExW(key,
         L"SteamExe", ((void*)0), ((void*)0), (BYTE*)steamPath, &pathBytes);
   RegCloseKey(key);
   if (status != ERROR_SUCCESS || pathBytes < 1) {
      fprintf(stderr, "Error reading SteamExe key\n");
      return;
   }

   pathChars = pathBytes / sizeof(wchar_t);
   for (i = 0; i < pathChars; ++i)
   {
      if (steamPath[i] == L'/')
         steamPath[i] = L'\\';
   }

   StringCbPrintfW(command, sizeof(command),
         L"\"%s\" steam://rungameid/%s", steamPath, wSteamId);

   Discord_RegisterW(appId, command);
}
