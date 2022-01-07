
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniStrCpy (int *,int ,int ) ;
 int exe_file_name_w ;

void GetExeNameW(wchar_t *name, UINT size)
{

 if (name == ((void*)0))
 {
  return;
 }

 UniStrCpy(name, size, exe_file_name_w);
}
