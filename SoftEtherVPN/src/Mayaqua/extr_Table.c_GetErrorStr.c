
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int UINT ;


 int Format (char*,int,char*,int ) ;
 char* GetTableStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ StrLen (char*) ;
 char* _SS (char*) ;

char *GetErrorStr(UINT err)
{
 char *ret;
 char name[MAX_SIZE];
 Format(name, sizeof(name), "ERR_%u", err);

 ret = GetTableStr(name);
 if (StrLen(ret) != 0)
 {
  return ret;
 }
 else
 {
  return _SS("ERR_UNKNOWN");
 }
}
