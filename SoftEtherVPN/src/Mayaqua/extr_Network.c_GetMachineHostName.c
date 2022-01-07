
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef size_t UINT ;


 int ConvertSafeFileName (char*,size_t,char*) ;
 int GetMachineName (char*,int) ;
 int MAX_SIZE ;
 size_t StrLen (char*) ;

void GetMachineHostName(char *name, UINT size)
{
 char tmp[MAX_SIZE];
 UINT i, len;

 if (name == ((void*)0))
 {
  return;
 }

 GetMachineName(tmp, sizeof(tmp));

 len = StrLen(tmp);
 for (i = 0;i < len;i++)
 {
  if (tmp[i] == '.')
  {
   tmp[i] = 0;
  }
 }

 ConvertSafeFileName(name, size, tmp);
}
