
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
typedef int key ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_2__ {scalar_t__ OsType; } ;


 int BinToStr (char*,int,int *,int) ;
 int Format (char*,int ,char*,char*) ;
 int GET_KETA (scalar_t__,int) ;
 TYPE_1__* GetOsInfo () ;
 int MAX_SIZE ;
 scalar_t__ OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER ;
 scalar_t__ OS_IS_WINDOWS_NT (scalar_t__) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int ) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;

void HashInstanceName(char *name, UINT size, char *instance_name)
{
 char tmp[MAX_SIZE];
 UCHAR hash[SHA1_SIZE];
 char key[11];

 if (name == ((void*)0) || instance_name == ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), instance_name);
 Trim(tmp);
 StrUpper(tmp);

 Sha0(hash, tmp, StrLen(tmp));
 BinToStr(key, sizeof(key), hash, 5);
 key[10] = 0;

 Format(name, size, "VPN-%s", key);

 if (OS_IS_WINDOWS_NT(GetOsInfo()->OsType))
 {
  if (GET_KETA(GetOsInfo()->OsType, 100) >= 2 ||
   GetOsInfo()->OsType == OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER)
  {
   StrCpy(tmp, sizeof(tmp), name);
   Format(name, size, "Global\\%s", tmp);
  }
 }
}
