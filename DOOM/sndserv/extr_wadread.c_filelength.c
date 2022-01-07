
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int fprintf (int ,char*) ;
 int fstat (int,struct stat*) ;
 int stderr ;

int filelength (int handle)
{
    struct stat fileinfo;

    if (fstat (handle,&fileinfo) == -1)
 fprintf (stderr, "Error fstating\n");

    return fileinfo.st_size;
}
