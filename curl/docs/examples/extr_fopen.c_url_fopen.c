
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int curl; int file; } ;
struct TYPE_7__ {scalar_t__ buffer_pos; TYPE_1__ handle; int still_running; int type; } ;
typedef TYPE_2__ URL_FILE ;


 int CFTYPE_CURL ;
 int CFTYPE_FILE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 TYPE_2__* calloc (int,int) ;
 int curl_easy_cleanup (int ) ;
 int curl_easy_init () ;
 int curl_easy_setopt (int ,int ,...) ;
 int curl_multi_add_handle (scalar_t__,int ) ;
 scalar_t__ curl_multi_init () ;
 int curl_multi_perform (scalar_t__,int *) ;
 int curl_multi_remove_handle (scalar_t__,int ) ;
 int fopen (char const*,char const*) ;
 int free (TYPE_2__*) ;
 scalar_t__ multi_handle ;
 long write_callback ;

URL_FILE *url_fopen(const char *url, const char *operation)
{



  URL_FILE *file;
  (void)operation;

  file = calloc(1, sizeof(URL_FILE));
  if(!file)
    return ((void*)0);

  file->handle.file = fopen(url, operation);
  if(file->handle.file)
    file->type = CFTYPE_FILE;

  else {
    file->type = CFTYPE_CURL;
    file->handle.curl = curl_easy_init();

    curl_easy_setopt(file->handle.curl, CURLOPT_URL, url);
    curl_easy_setopt(file->handle.curl, CURLOPT_WRITEDATA, file);
    curl_easy_setopt(file->handle.curl, CURLOPT_VERBOSE, 0L);
    curl_easy_setopt(file->handle.curl, CURLOPT_WRITEFUNCTION, write_callback);

    if(!multi_handle)
      multi_handle = curl_multi_init();

    curl_multi_add_handle(multi_handle, file->handle.curl);


    curl_multi_perform(multi_handle, &file->still_running);

    if((file->buffer_pos == 0) && (!file->still_running)) {



      curl_multi_remove_handle(multi_handle, file->handle.curl);


      curl_easy_cleanup(file->handle.curl);

      free(file);

      file = ((void*)0);
    }
  }
  return file;
}
