
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 unsigned int RETRO_VFS_FILE_ACCESS_READ ;
 unsigned int RETRO_VFS_FILE_ACCESS_READ_WRITE ;
 unsigned int RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING ;
 unsigned int RETRO_VFS_FILE_ACCESS_WRITE ;
 int RETRO_VFS_SEEK_POSITION_END ;
 int * filestream_open (char const*,unsigned int,int ) ;
 int filestream_seek (int *,int ,int ) ;
 scalar_t__ strstr (char const*,char*) ;

RFILE* rfopen(const char *path, const char *mode)
{
   RFILE *output = ((void*)0);
   unsigned int retro_mode = RETRO_VFS_FILE_ACCESS_READ;
   bool position_to_end = 0;

   if (strstr(mode, "r"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_READ;
      if (strstr(mode, "+"))
      {
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE |
            RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      }
   }
   else if (strstr(mode, "w"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_WRITE;
      if (strstr(mode, "+"))
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE;
   }
   else if (strstr(mode, "a"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_WRITE |
         RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      position_to_end = 1;
      if (strstr(mode, "+"))
      {
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE |
            RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      }
   }

   output = filestream_open(path, retro_mode,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (output && position_to_end)
      filestream_seek(output, 0, RETRO_VFS_SEEK_POSITION_END);

   return output;
}
