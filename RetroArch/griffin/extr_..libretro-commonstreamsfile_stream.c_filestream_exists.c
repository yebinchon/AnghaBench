
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int filestream_close (int *) ;
 int * filestream_open (char const*,int ,int ) ;

bool filestream_exists(const char *path)
{
   RFILE *dummy = ((void*)0);

   if (!path || !*path)
      return 0;

   dummy = filestream_open(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dummy)
      return 0;

   filestream_close(dummy);
   return 1;
}
