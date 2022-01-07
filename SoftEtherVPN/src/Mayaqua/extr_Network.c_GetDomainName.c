
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int ClearStr (char*,int ) ;
 scalar_t__ IsEmptyStr (char*) ;
 int UnixGetDomainName (char*,int ) ;
 int Win32GetDefaultDns (int *,char*,int ) ;
 int Win32GetDnsSuffix (char*,int ) ;

bool GetDomainName(char *name, UINT size)
{
 bool ret = 0;
 IP ip;

 ClearStr(name, size);
 if (name == ((void*)0))
 {
  return 0;
 }
 ret = UnixGetDomainName(name, size);


 if (ret == 0)
 {
  return 0;
 }

 return (IsEmptyStr(name) ? 0 : 1);
}
