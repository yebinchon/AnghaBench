
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int * ReadHamcore (char*) ;

BUF *ReadHamcoreW(wchar_t *filename)
{
 char *filename_a = CopyUniToStr(filename);
 BUF *ret;

 ret = ReadHamcore(filename_a);

 Free(filename_a);

 return ret;
}
