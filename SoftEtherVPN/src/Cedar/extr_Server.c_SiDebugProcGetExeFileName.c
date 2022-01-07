
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;


 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int GetExeName (char*,int ) ;

UINT SiDebugProcGetExeFileName(SERVER *s, char *in_str, char *ret_str, UINT ret_str_size)
{

 if (s == ((void*)0) || in_str == ((void*)0) || ret_str == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 GetExeName(ret_str, ret_str_size);

 return ERR_NO_ERROR;
}
