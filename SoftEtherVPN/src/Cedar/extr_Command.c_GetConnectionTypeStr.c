
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int Format (char*,int,char*,int ) ;
 int MAX_SIZE ;
 int * _UU (char*) ;

wchar_t *GetConnectionTypeStr(UINT type)
{
 char tmp[MAX_SIZE];
 Format(tmp, sizeof(tmp), "SM_CONNECTION_TYPE_%u", type);

 return _UU(tmp);
}
