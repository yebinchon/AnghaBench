
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ first_sector; unsigned int current_sector; int pos; scalar_t__ current_sector_offset; scalar_t__ sector_buffer_valid; } ;
typedef TYPE_1__ cdfs_file_t ;



void cdfs_seek_sector(cdfs_file_t* file, unsigned int sector)
{

   if (file->first_sector == 0)
   {
      if (sector != file->current_sector)
      {
         file->current_sector = sector;
         file->sector_buffer_valid = 0;
      }

      file->pos = file->current_sector * 2048;
      file->current_sector_offset = 0;
   }
}
