
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
struct TYPE_5__ {int type; int still_running; int buffer_pos; TYPE_1__ handle; } ;
typedef TYPE_2__ URL_FILE ;




 int EBADF ;
 int errno ;
 int feof (int ) ;

int url_feof(URL_FILE *file)
{
  int ret = 0;

  switch(file->type) {
  case 128:
    ret = feof(file->handle.file);
    break;

  case 129:
    if((file->buffer_pos == 0) && (!file->still_running))
      ret = 1;
    break;

  default:
    ret = -1;
    errno = EBADF;
    break;
  }
  return ret;
}
