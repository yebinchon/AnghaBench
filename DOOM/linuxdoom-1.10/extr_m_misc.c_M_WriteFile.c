
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean ;


 int O_BINARY ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int open (char const*,int,int) ;
 int write (int,void*,int) ;

boolean
M_WriteFile
( char const* name,
  void* source,
  int length )
{
    int handle;
    int count;

    handle = open ( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666);

    if (handle == -1)
 return 0;

    count = write (handle, source, length);
    close (handle);

    if (count < length)
 return 0;

    return 1;
}
