
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,int,void const*,unsigned int,int) ;
 scalar_t__ write (int,void const*,unsigned int) ;

int vc_hostfs_write(int fildes, const void *buf, unsigned int nbyte)
{
   int ret = (int) write(fildes, buf, nbyte);
   DEBUG_MINOR("vc_hostfs_write(%d,%p,%u) = %d", fildes, buf, nbyte, ret);
   return ret;
}
