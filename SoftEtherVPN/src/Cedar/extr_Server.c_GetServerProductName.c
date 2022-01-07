
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;


 int GetServerProductNameInternal (int *,char*,int ) ;
 int StrCat (char*,int ,char*) ;

void GetServerProductName(SERVER *s, char *name, UINT size)
{
 char *cpu;

 if (s == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 GetServerProductNameInternal(s, name, size);




 cpu = " (32 bit)";


 StrCat(name, size, cpu);

 StrCat(name, size, " (Open Source)");
}
