
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ file_archive_file_data_t ;


 scalar_t__ calloc (int,int) ;
 int file_archive_free (TYPE_1__*) ;
 int filestream_read_file (char const*,int *,scalar_t__*) ;

__attribute__((used)) static file_archive_file_data_t* file_archive_open(const char *path)
{
   int64_t ret = -1;
   bool read_from_file = 0;
   file_archive_file_data_t *data = (file_archive_file_data_t*)
      calloc(1, sizeof(*data));

   if (!data)
      return ((void*)0);

   read_from_file = filestream_read_file(path, &data->data, &ret);


   if (!read_from_file || ret < 0)
      goto error;

   data->size = ret;
   return data;

error:
   file_archive_free(data);
   return ((void*)0);
}
