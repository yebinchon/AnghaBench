
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int GetMachineName (char*,int) ;
 int MAX_PATH ;
 int Sha0 (void*,char*,int ) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;

void CiGetCurrentMachineHashNew(void *data)
{
 char name[MAX_PATH];
 char *p;


 if (data == ((void*)0))
 {
  return;
 }

 GetMachineName(name, sizeof(name));


 for(p=name; *p; p++)
  if(*p == '.')
   *p = 0;

 Trim(name);
 StrUpper(name);

 Sha0(data, name, StrLen(name));
}
