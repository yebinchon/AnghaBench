
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ file_archive_file_data_t ;



__attribute__((used)) static const uint8_t *file_archive_data(file_archive_file_data_t *data)
{
   if (!data)
      return ((void*)0);
   return (const uint8_t*)data->data;
}
