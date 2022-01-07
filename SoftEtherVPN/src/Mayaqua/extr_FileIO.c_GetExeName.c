
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int StrCpy (char*,int ,int ) ;
 int exe_file_name ;

void GetExeName(char *name, UINT size)
{

 if (name == ((void*)0))
 {
  return;
 }

 StrCpy(name, size, exe_file_name);
}
