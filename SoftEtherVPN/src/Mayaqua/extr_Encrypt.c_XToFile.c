
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int X ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int XToFileW (int *,int *,int) ;

bool XToFile(X *x, char *filename, bool text)
{
 wchar_t *filename_w = CopyStrToUni(filename);
 bool ret = XToFileW(x, filename_w, text);

 Free(filename_w);

 return ret;
}
