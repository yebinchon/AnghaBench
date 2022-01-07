
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;


 int * CfgReadW (int *) ;
 int * CopyStrToUni (char*) ;
 int Free (int *) ;

FOLDER *CfgRead(char *name)
{
 wchar_t *name_w = CopyStrToUni(name);
 FOLDER *ret = CfgReadW(name_w);

 Free(name_w);

 return ret;
}
