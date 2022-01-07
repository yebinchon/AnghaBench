
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GetDirNameFromFilePath (char*,int ,int ) ;
 int exe_file_name ;

void GetExeDir(char *name, UINT size)
{

 if (name == ((void*)0))
 {
  return;
 }

 GetDirNameFromFilePath(name, size, exe_file_name);
}
