
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int FOLDER ;


 int CfgGetUniStr (int *,char*,int *,int) ;
 int Free (int *) ;
 int * Malloc (int) ;
 int UniToStr (char*,int,int *) ;

bool CfgGetStr(FOLDER *f, char *name, char *str, UINT size)
{
 wchar_t *tmp;
 UINT tmp_size;

 if (f == ((void*)0) || name == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 str[0] = 0;


 tmp_size = size * 4 + 10;
 tmp = Malloc(tmp_size);
 if (CfgGetUniStr(f, name, tmp, tmp_size) == 0)
 {

  Free(tmp);
  return 0;
 }


 UniToStr(str, size, tmp);
 Free(tmp);

 return 1;
}
