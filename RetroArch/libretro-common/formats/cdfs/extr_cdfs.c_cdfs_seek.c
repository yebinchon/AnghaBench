
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ first_sector; unsigned int pos; int size; int current_sector_offset; int current_sector; int sector_buffer_valid; } ;
typedef TYPE_1__ cdfs_file_t ;






int64_t cdfs_seek(cdfs_file_t* file, int64_t offset, int whence)
{
   int64_t new_pos;
   int new_sector;

   if (!file || file->first_sector < 0)
      return -1;

   switch (whence)
   {
      case 128:
         new_pos = offset;
         break;

      case 130:
         new_pos = file->pos + offset;
         break;

      case 129:
         new_pos = file->size - offset;
         break;

      default:
         return -1;
   }

   if (new_pos < 0)
      return -1;
   else if (new_pos > file->size)
      return -1;

   file->pos = (unsigned int)new_pos;
   file->current_sector_offset = file->pos % 2048;

   new_sector = file->pos / 2048;
   if (new_sector != file->current_sector)
   {
      file->current_sector = new_sector;
      file->sector_buffer_valid = 0;
   }

   return 0;
}
