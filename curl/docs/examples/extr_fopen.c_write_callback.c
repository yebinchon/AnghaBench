
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_len; size_t buffer_pos; char* buffer; } ;
typedef TYPE_1__ URL_FILE ;


 int fprintf (int ,char*) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;
 int stderr ;

__attribute__((used)) static size_t write_callback(char *buffer,
                             size_t size,
                             size_t nitems,
                             void *userp)
{
  char *newbuff;
  size_t rembuff;

  URL_FILE *url = (URL_FILE *)userp;
  size *= nitems;

  rembuff = url->buffer_len - url->buffer_pos;

  if(size > rembuff) {

    newbuff = realloc(url->buffer, url->buffer_len + (size - rembuff));
    if(newbuff == ((void*)0)) {
      fprintf(stderr, "callback buffer grow failed\n");
      size = rembuff;
    }
    else {

      url->buffer_len += size - rembuff;
      url->buffer = newbuff;
    }
  }

  memcpy(&url->buffer[url->buffer_pos], buffer, size);
  url->buffer_pos += size;

  return size;
}
