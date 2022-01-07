
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int GetEnvW_ForUnix (int *,int *,int ) ;
 int GetEnvW_ForWin32 (int *,int *,int ) ;

bool GetEnvW(wchar_t *name, wchar_t *data, UINT size)
{



 return GetEnvW_ForUnix(name, data, size);

}
