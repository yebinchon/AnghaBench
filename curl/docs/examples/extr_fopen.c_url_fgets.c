
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int file; } ;
struct TYPE_7__ {int type; size_t buffer_pos; char* buffer; TYPE_1__ handle; } ;
typedef TYPE_2__ URL_FILE ;




 int EBADF ;
 int errno ;
 char* fgets (char*,int,int ) ;
 int fill_buffer (TYPE_2__*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int use_buffer (TYPE_2__*,size_t) ;

char *url_fgets(char *ptr, size_t size, URL_FILE *file)
{
  size_t want = size - 1;
  size_t loop;

  switch(file->type) {
  case 128:
    ptr = fgets(ptr, (int)size, file->handle.file);
    break;

  case 129:
    fill_buffer(file, want);



    if(!file->buffer_pos)
      return ((void*)0);


    if(file->buffer_pos < want)
      want = file->buffer_pos;



    for(loop = 0; loop < want; loop++) {
      if(file->buffer[loop] == '\n') {
        want = loop + 1;
        break;
      }
    }


    memcpy(ptr, file->buffer, want);
    ptr[want] = 0;

    use_buffer(file, want);

    break;

  default:
    ptr = ((void*)0);
    errno = EBADF;
    break;
  }

  return ptr;
}
