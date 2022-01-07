
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ file_archive_file_data_t ;



__attribute__((used)) static size_t file_archive_size(file_archive_file_data_t *data)
{
   if (!data)
      return 0;
   return data->size;
}
