
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const wchar_t ;
typedef int protocolName ;
typedef int protocolDescription ;
typedef int openCommand ;
typedef int keyName ;
typedef scalar_t__ LSTATUS ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetModuleFileNameW (int *,scalar_t__ const*,int) ;
 int HKEY_CURRENT_USER ;
 int KEY_WRITE ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,scalar_t__ const*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegSetKeyValueW (int ,char*,char*,int ,scalar_t__ const*,int) ;
 int StringCbPrintfW (scalar_t__ const*,int,char*,scalar_t__ const*) ;
 int fprintf (int ,char*) ;
 scalar_t__ lstrlenW (scalar_t__ const*) ;
 int stderr ;

__attribute__((used)) static void Discord_RegisterW(
      const wchar_t* applicationId, const wchar_t* command)
{




    DWORD len;
    LSTATUS result;
    wchar_t urlProtocol = 0;
    wchar_t keyName[256];
    wchar_t protocolName[64];
    wchar_t protocolDescription[128];
    wchar_t exeFilePath[MAX_PATH];
    DWORD exeLen = GetModuleFileNameW(((void*)0), exeFilePath, MAX_PATH);
    wchar_t openCommand[1024];

    if (command && command[0])
        StringCbPrintfW(openCommand, sizeof(openCommand), L"%S", command);
    else
        StringCbPrintfW(openCommand, sizeof(openCommand), L"%S", exeFilePath);

    StringCbPrintfW(protocolName, sizeof(protocolName),
          L"discord-%S", applicationId);
    StringCbPrintfW(
      protocolDescription, sizeof(protocolDescription),
      L"URL:Run game %S protocol", applicationId);
    StringCbPrintfW(keyName, sizeof(keyName), L"Software\\Classes\\%S", protocolName);
    HKEY key;
    LSTATUS status =
      RegCreateKeyExW(HKEY_CURRENT_USER, keyName, 0, ((void*)0), 0, KEY_WRITE, ((void*)0), &key, ((void*)0));
    if (status != ERROR_SUCCESS)
    {
        fprintf(stderr, "Error creating key\n");
        return;
    }
    len = (DWORD)lstrlenW(protocolDescription) + 1;
    result =
      RegSetKeyValueW(key, ((void*)0), ((void*)0), REG_SZ, protocolDescription, len * sizeof(wchar_t));
    if (FAILED(result)) {
        fprintf(stderr, "Error writing description\n");
    }

    len = (DWORD)lstrlenW(protocolDescription) + 1;
    result = RegSetKeyValueW(key, ((void*)0), L"URL Protocol", REG_SZ, &urlProtocol, sizeof(wchar_t));
    if (FAILED(result))
        fprintf(stderr, "Error writing description\n");

    result = RegSetKeyValueW(
      key, L"DefaultIcon", ((void*)0), REG_SZ, exeFilePath, (exeLen + 1) * sizeof(wchar_t));
    if (FAILED(result))
        fprintf(stderr, "Error writing icon\n");

    len = (DWORD)lstrlenW(openCommand) + 1;
    result = RegSetKeyValueW(
      key, L"shell\\open\\command", ((void*)0), REG_SZ, openCommand, len * sizeof(wchar_t));
    if (FAILED(result))
        fprintf(stderr, "Error writing command\n");
    RegCloseKey(key);
}
