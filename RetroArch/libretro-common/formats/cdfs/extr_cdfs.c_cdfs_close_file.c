
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_sector; } ;
typedef TYPE_1__ cdfs_file_t ;



void cdfs_close_file(cdfs_file_t* file)
{
   if (file)
   {

      file->first_sector = -1;
   }
}
