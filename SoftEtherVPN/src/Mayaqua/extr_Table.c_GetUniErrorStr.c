
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int name ;
typedef int UINT ;


 int Format (char*,int,char*,int ) ;
 int * GetTableUniStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ UniStrLen (int *) ;
 int * _UU (char*) ;

wchar_t *GetUniErrorStr(UINT err)
{
 wchar_t *ret;
 char name[MAX_SIZE];
 Format(name, sizeof(name), "ERR_%u", err);

 ret = GetTableUniStr(name);
 if (UniStrLen(ret) != 0)
 {
  return ret;
 }
 else
 {
  return _UU("ERR_UNKNOWN");
 }
}
