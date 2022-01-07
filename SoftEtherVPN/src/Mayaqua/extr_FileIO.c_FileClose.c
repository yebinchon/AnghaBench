
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IO ;


 int FileCloseEx (int *,int) ;

void FileClose(IO *o)
{
 FileCloseEx(o, 0);
}
