
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int I_Error (char*) ;
 int fstat (int,struct stat*) ;

int filelength (int handle)
{
    struct stat fileinfo;

    if (fstat (handle,&fileinfo) == -1)
 I_Error ("Error fstating");

    return fileinfo.st_size;
}
