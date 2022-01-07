
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curl; int file; } ;
struct TYPE_5__ {int type; int buffer_len; int buffer_pos; int * buffer; TYPE_1__ handle; } ;
typedef TYPE_2__ URL_FILE ;




 int curl_multi_add_handle (int ,int ) ;
 int curl_multi_remove_handle (int ,int ) ;
 int free (int *) ;
 int multi_handle ;
 int rewind (int ) ;

void url_rewind(URL_FILE *file)
{
  switch(file->type) {
  case 128:
    rewind(file->handle.file);
    break;

  case 129:

    curl_multi_remove_handle(multi_handle, file->handle.curl);


    curl_multi_add_handle(multi_handle, file->handle.curl);


    free(file->buffer);
    file->buffer = ((void*)0);
    file->buffer_pos = 0;
    file->buffer_len = 0;

    break;

  default:
    break;
  }
}
