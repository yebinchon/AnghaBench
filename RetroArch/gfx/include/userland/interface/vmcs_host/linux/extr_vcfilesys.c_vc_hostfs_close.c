
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,int) ;
 int close (int) ;

int vc_hostfs_close(int fildes)
{
   DEBUG_MINOR("vc_hostfs_close(%d)", fildes);
   return close(fildes);
}
