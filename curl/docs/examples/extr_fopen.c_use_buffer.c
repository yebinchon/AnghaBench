
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t buffer_pos; int * buffer; scalar_t__ buffer_len; } ;
typedef TYPE_1__ URL_FILE ;


 int free (int *) ;
 int memmove (int *,int *,size_t) ;

__attribute__((used)) static int use_buffer(URL_FILE *file, size_t want)
{

  if(file->buffer_pos <= want) {

    free(file->buffer);
    file->buffer = ((void*)0);
    file->buffer_pos = 0;
    file->buffer_len = 0;
  }
  else {

    memmove(file->buffer,
            &file->buffer[want],
            (file->buffer_pos - want));

    file->buffer_pos -= want;
  }
  return 0;
}
