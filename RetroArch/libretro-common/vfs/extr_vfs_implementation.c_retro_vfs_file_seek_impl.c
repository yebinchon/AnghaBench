
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int int64_t ;





 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int retro_vfs_file_seek_internal (int *,int ,int) ;

int64_t retro_vfs_file_seek_impl(libretro_vfs_implementation_file *stream,
      int64_t offset, int seek_position)
{
   int whence = -1;
   switch (seek_position)
   {
      case 128:
         whence = SEEK_SET;
         break;
      case 130:
         whence = SEEK_CUR;
         break;
      case 129:
         whence = SEEK_END;
         break;
   }

   return retro_vfs_file_seek_internal(stream, offset, whence);
}
