
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp ;


 int Format (char*,int,char*,char*) ;
 int MAX_SIZE ;
 scalar_t__ UniIsEmptyStr (char*) ;
 char* _UU (char*) ;

wchar_t *GetHubAdminOptionHelpString(char *name)
{
 char tmp[MAX_SIZE];
 wchar_t *ret;

 if (name == ((void*)0))
 {
  return L"";
 }

 Format(tmp, sizeof(tmp), "HUB_AO_%s", name);

 ret = _UU(tmp);
 if (UniIsEmptyStr(ret))
 {
  ret = _UU("HUB_AO_UNKNOWN");
 }

 return ret;
}
