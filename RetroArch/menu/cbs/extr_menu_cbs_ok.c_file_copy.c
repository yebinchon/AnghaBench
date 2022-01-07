
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int buffer ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int filestream_close (int *) ;
 int filestream_eof (int *) ;
 scalar_t__ filestream_error (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 scalar_t__ filestream_read (int *,char*,int) ;
 scalar_t__ filestream_write (int *,char*,scalar_t__) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static bool file_copy(const char *src_path, const char *dst_path, char *msg, size_t size)
{
   RFILE *dst = ((void*)0);
   bool ret = 1;
   RFILE *src = filestream_open(src_path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!src)
   {
      strlcpy(msg, "unable to open source file", size);
      ret = 0;
   }

   dst = filestream_open(dst_path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dst)
   {
      strlcpy(msg, "unable to open destination file", size);
      ret = 0;
   }

   while (!filestream_eof(src))
   {
      int64_t numw;
      char buffer[100] = {0};
      int64_t numr = filestream_read(src, buffer, sizeof(buffer));

      if (filestream_error(dst) != 0)
      {
         strlcpy(msg, "error reading file\n", size);
         ret = 0;
         break;
      }

      numw = filestream_write(dst, buffer, numr);

      if (numw != numr)
      {
         strlcpy(msg, "error writing to file\n", size);
         ret = 0;
         break;
      }
   }

   filestream_close(src);
   filestream_close(dst);

   return ret;
}
