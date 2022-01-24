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
typedef  scalar_t__ const wchar_t ;
typedef  int /*<<< orphan*/  protocolName ;
typedef  int /*<<< orphan*/  protocolDescription ;
typedef  int /*<<< orphan*/  openCommand ;
typedef  int /*<<< orphan*/  keyName ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const*,int,char*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (scalar_t__ const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(
      const wchar_t* applicationId, const wchar_t* command)
{
    /* https://msdn.microsoft.com/en-us/library/aa767914(v=vs.85).aspx
     * we want to register games so we can run them as discord-<appid>://
     * Update the HKEY_CURRENT_USER, because it doesn't seem to require special permissions. */

    DWORD len;
    LSTATUS result;
    wchar_t urlProtocol = 0;
    wchar_t keyName[256];
    wchar_t protocolName[64];
    wchar_t protocolDescription[128];
    wchar_t exeFilePath[MAX_PATH];
    DWORD exeLen = FUNC1(NULL, exeFilePath, MAX_PATH);
    wchar_t openCommand[1024];

    if (command && command[0])
        FUNC5(openCommand, sizeof(openCommand), L"%S", command);
    else
        FUNC5(openCommand, sizeof(openCommand), L"%S", exeFilePath);

    FUNC5(protocolName, sizeof(protocolName),
          L"discord-%S", applicationId);
    FUNC5(
      protocolDescription, sizeof(protocolDescription),
      L"URL:Run game %S protocol", applicationId);
    FUNC5(keyName, sizeof(keyName), L"Software\\Classes\\%S", protocolName);
    HKEY key;
    LSTATUS status =
      FUNC3(HKEY_CURRENT_USER, keyName, 0, NULL, 0, KEY_WRITE, NULL, &key, NULL);
    if (status != ERROR_SUCCESS)
    {
        FUNC6(stderr, "Error creating key\n");
        return;
    }
    len = (DWORD)FUNC7(protocolDescription) + 1;
    result =
      FUNC4(key, NULL, NULL, REG_SZ, protocolDescription, len * sizeof(wchar_t));
    if (FUNC0(result)) {
        FUNC6(stderr, "Error writing description\n");
    }

    len = (DWORD)FUNC7(protocolDescription) + 1;
    result = FUNC4(key, NULL, L"URL Protocol", REG_SZ, &urlProtocol, sizeof(wchar_t));
    if (FUNC0(result))
        FUNC6(stderr, "Error writing description\n");

    result = FUNC4(
      key, L"DefaultIcon", NULL, REG_SZ, exeFilePath, (exeLen + 1) * sizeof(wchar_t));
    if (FUNC0(result))
        FUNC6(stderr, "Error writing icon\n");

    len = (DWORD)FUNC7(openCommand) + 1;
    result = FUNC4(
      key, L"shell\\open\\command", NULL, REG_SZ, openCommand, len * sizeof(wchar_t));
    if (FUNC0(result))
        FUNC6(stderr, "Error writing command\n");
    FUNC2(key);
}