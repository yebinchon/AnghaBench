
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 int * ReadDumpExW (int *,int) ;

BUF *ReadDumpW(wchar_t *filename)
{
 return ReadDumpExW(filename, 1);
}
