
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dir {int * dhandle; } ;


 int DEBUG_MINOR (char*,void*) ;
 int closedir (int *) ;
 int free (struct fs_dir*) ;

int vc_hostfs_closedir(void *dhandle)
{
   struct fs_dir *fsdir = (struct fs_dir *)dhandle;
   int ret = -1;

   DEBUG_MINOR( "vc_hostfs_closedir(%p)", dhandle );

   if (dhandle && fsdir->dhandle)
   {
      (void)closedir(fsdir->dhandle);
      fsdir->dhandle = ((void*)0);
      free(fsdir);
      ret = 0;
   }

   return ret;
}
