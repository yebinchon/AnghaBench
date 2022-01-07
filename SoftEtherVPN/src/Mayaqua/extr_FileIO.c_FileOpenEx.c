
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int * CopyStrToUni (char*) ;
 int * FileOpenExW (int *,int,int) ;
 int Free (int *) ;

IO *FileOpenEx(char *name, bool write_mode, bool read_lock)
{
 wchar_t *name_w = CopyStrToUni(name);
 IO *ret = FileOpenExW(name_w, write_mode, read_lock);

 Free(name_w);

 return ret;
}
