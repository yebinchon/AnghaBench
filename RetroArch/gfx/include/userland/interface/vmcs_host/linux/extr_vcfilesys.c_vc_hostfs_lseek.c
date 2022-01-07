
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ vc_hostfs_lseek64 (int,int ,int) ;

long vc_hostfs_lseek(int fildes, long offset, int whence)
{
   return (long) vc_hostfs_lseek64( fildes, (int64_t) offset, whence);
}
