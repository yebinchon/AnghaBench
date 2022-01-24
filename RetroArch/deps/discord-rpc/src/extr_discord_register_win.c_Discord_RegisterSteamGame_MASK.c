#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  steamPath ;
typedef  int /*<<< orphan*/  command ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC7(
      const char* applicationId,
      const char* steamId)
{
   DWORD pathChars, pathBytes, i;
   HKEY key;
   wchar_t steamPath[MAX_PATH];
   wchar_t command[1024];
   wchar_t appId[32];
   wchar_t wSteamId[32];
   FUNC1(CP_UTF8, 0, applicationId, -1, appId, 32);
   FUNC1(CP_UTF8, 0, steamId, -1, wSteamId, 32);
   LSTATUS status = FUNC3(HKEY_CURRENT_USER,
         L"Software\\Valve\\Steam", 0, KEY_READ, &key);
   if (status != ERROR_SUCCESS)
   {
      FUNC6(stderr, "Error opening Steam key\n");
      return;
   }

   pathBytes = sizeof(steamPath);
   status    = FUNC4(key,
         L"SteamExe", NULL, NULL, (BYTE*)steamPath, &pathBytes);
   FUNC2(key);
   if (status != ERROR_SUCCESS || pathBytes < 1) {
      FUNC6(stderr, "Error reading SteamExe key\n");
      return;
   }

   pathChars = pathBytes / sizeof(wchar_t);
   for (i = 0; i < pathChars; ++i)
   {
      if (steamPath[i] == L'/')
         steamPath[i] = L'\\';
   }

   FUNC5(command, sizeof(command),
         L"\"%s\" steam://rungameid/%s", steamPath, wSteamId);

   FUNC0(appId, command);
}