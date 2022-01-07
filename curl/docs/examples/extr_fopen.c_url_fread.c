
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int file; } ;
struct TYPE_7__ {int type; size_t buffer_pos; int buffer; TYPE_1__ handle; } ;
typedef TYPE_2__ URL_FILE ;




 int EBADF ;
 int errno ;
 int fill_buffer (TYPE_2__*,size_t) ;
 size_t fread (void*,size_t,size_t,int ) ;
 int memcpy (void*,int ,size_t) ;
 int use_buffer (TYPE_2__*,size_t) ;

size_t url_fread(void *ptr, size_t size, size_t nmemb, URL_FILE *file)
{
  size_t want;

  switch(file->type) {
  case 128:
    want = fread(ptr, size, nmemb, file->handle.file);
    break;

  case 129:
    want = nmemb * size;

    fill_buffer(file, want);



    if(!file->buffer_pos)
      return 0;


    if(file->buffer_pos < want)
      want = file->buffer_pos;


    memcpy(ptr, file->buffer, want);

    use_buffer(file, want);

    want = want / size;
    break;

  default:
    want = 0;
    errno = EBADF;
    break;

  }
  return want;
}
