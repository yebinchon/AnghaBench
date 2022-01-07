
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int curl; int file; } ;
struct TYPE_6__ {int type; struct TYPE_6__* buffer; TYPE_1__ handle; } ;
typedef TYPE_2__ URL_FILE ;




 int EBADF ;
 int EOF ;
 int curl_easy_cleanup (int ) ;
 int curl_multi_remove_handle (int ,int ) ;
 int errno ;
 int fclose (int ) ;
 int free (TYPE_2__*) ;
 int multi_handle ;

int url_fclose(URL_FILE *file)
{
  int ret = 0;

  switch(file->type) {
  case 128:
    ret = fclose(file->handle.file);
    break;

  case 129:

    curl_multi_remove_handle(multi_handle, file->handle.curl);


    curl_easy_cleanup(file->handle.curl);
    break;

  default:
    ret = EOF;
    errno = EBADF;
    break;
  }

  free(file->buffer);
  free(file);

  return ret;
}
