
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int byte ;


 int I_Error (char*,char const*) ;
 int O_BINARY ;
 int O_RDONLY ;
 int PU_STATIC ;
 int * Z_Malloc (int,int ,int *) ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int,int) ;
 int read (int,int *,int) ;

int
M_ReadFile
( char const* name,
  byte** buffer )
{
    int handle, count, length;
    struct stat fileinfo;
    byte *buf;

    handle = open (name, O_RDONLY | O_BINARY, 0666);
    if (handle == -1)
 I_Error ("Couldn't read file %s", name);
    if (fstat (handle,&fileinfo) == -1)
 I_Error ("Couldn't read file %s", name);
    length = fileinfo.st_size;
    buf = Z_Malloc (length, PU_STATIC, ((void*)0));
    count = read (handle, buf, length);
    close (handle);

    if (count < length)
 I_Error ("Couldn't read file %s", name);

    *buffer = buf;
    return length;
}
