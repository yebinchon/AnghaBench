
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LSTATUS ;
typedef scalar_t__* LPCWSTR ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_SUCCESS ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (scalar_t__) ;
 int RegCreateKeyExW (scalar_t__,scalar_t__*,int ,int ,int ,int ,int ,scalar_t__*,int ) ;
 int RegSetValueExW (scalar_t__,scalar_t__*,int ,int ,int const*,int ) ;

__attribute__((used)) static LSTATUS regset(HKEY hkey,
      LPCWSTR subkey,
      LPCWSTR name,
      DWORD type,
      const void* data,
      DWORD len)
{
    HKEY htkey = hkey, hsubkey = ((void*)0);
    LSTATUS ret;
    if (subkey && subkey[0])
    {
        if ((ret = RegCreateKeyExW(hkey, subkey, 0, 0, 0, KEY_ALL_ACCESS, 0, &hsubkey, 0)) !=
            ERROR_SUCCESS)
            return ret;
        htkey = hsubkey;
    }
    ret = RegSetValueExW(htkey, name, 0, type, (const BYTE*)data, len);
    if (hsubkey && hsubkey != hkey)
        RegCloseKey(hsubkey);
    return ret;
}
