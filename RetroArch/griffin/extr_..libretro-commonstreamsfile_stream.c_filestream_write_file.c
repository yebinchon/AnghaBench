
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int filestream_close (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 scalar_t__ filestream_write (int *,void const*,scalar_t__) ;

bool filestream_write_file(const char *path, const void *data, int64_t size)
{
   int64_t ret = 0;
   RFILE *file = filestream_open(path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!file)
      return 0;

   ret = filestream_write(file, data, size);
   filestream_close(file);

   if (ret != size)
      return 0;

   return 1;
}
