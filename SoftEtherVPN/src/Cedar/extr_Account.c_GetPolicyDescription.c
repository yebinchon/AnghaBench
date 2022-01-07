
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

wchar_t *GetPolicyDescription(UINT id)
{
 char tmp[MAX_SIZE];
 Format(tmp, sizeof(tmp), "POL_EX_%u", id);

 return _UU(tmp);
}
