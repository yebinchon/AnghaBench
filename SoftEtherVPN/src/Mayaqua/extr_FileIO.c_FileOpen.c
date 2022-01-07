
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IO ;


 int * FileOpenEx (char*,int,int) ;

IO *FileOpen(char *name, bool write_mode)
{
 return FileOpenEx(name, write_mode, 1);
}
