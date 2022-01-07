
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;


 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int Format (char*,int ,char*,char*,char*) ;
 int GetCurrentGetIpThreadNum () ;
 int GetGetIpThreadMaxNum () ;
 int ToStr3 (char*,int ,int ) ;

UINT SiDebugProcGetCurrentGetIPThreadCount(SERVER *s, char *in_str, char *ret_str, UINT ret_str_size)
{
 char tmp1[64], tmp2[64];

 if (s == ((void*)0) || in_str == ((void*)0) || ret_str == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 ToStr3(tmp1, 0, GetCurrentGetIpThreadNum());
 ToStr3(tmp2, 0, GetGetIpThreadMaxNum());

 Format(ret_str, 0,
  "Current threads = %s\n"
  "Quota           = %s\n",
  tmp1, tmp2);

 return ERR_NO_ERROR;
}
