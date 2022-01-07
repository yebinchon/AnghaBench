
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ file_archive_file_data_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void file_archive_free(file_archive_file_data_t *data)
{
   if (!data)
      return;
   if(data->data)
      free(data->data);
   free(data);
}
