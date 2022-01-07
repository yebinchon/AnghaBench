
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int RFILE ;


 int RETRO_VFS_SEEK_POSITION_CURRENT ;
 int RETRO_VFS_SEEK_POSITION_END ;
 int RETRO_VFS_SEEK_POSITION_START ;



 int filestream_seek (int *,int ,int) ;

int64_t rfseek(RFILE* stream, int64_t offset, int origin)
{
   int seek_position = -1;
   switch (origin)
   {
      case 128:
         seek_position = RETRO_VFS_SEEK_POSITION_START;
         break;
      case 130:
         seek_position = RETRO_VFS_SEEK_POSITION_CURRENT;
         break;
      case 129:
         seek_position = RETRO_VFS_SEEK_POSITION_END;
         break;
   }

   return filestream_seek(stream, offset, seek_position);
}
