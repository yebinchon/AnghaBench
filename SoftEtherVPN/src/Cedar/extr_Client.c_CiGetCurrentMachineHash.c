
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

void CiGetCurrentMachineHash(void *data)
{
 char name[MAX_PATH];
 char *product_id = ((void*)0);

 if (data == ((void*)0))
 {
  return;
 }

 GetMachineName(name, sizeof(name));

 Trim(name);
 StrUpper(name);

 Sha0(data, name, StrLen(name));
}
