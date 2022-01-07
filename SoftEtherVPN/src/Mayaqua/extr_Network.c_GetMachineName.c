
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GetMachineNameEx (char*,int ,int) ;

void GetMachineName(char *name, UINT size)
{
 GetMachineNameEx(name, size, 0);
}
