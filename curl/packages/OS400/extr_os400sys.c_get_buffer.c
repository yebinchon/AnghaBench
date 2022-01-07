
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; long size; } ;
typedef TYPE_1__ buffer_t ;


 long MIN_BYTE_GAIN ;
 char* malloc (long) ;
 char* realloc (char*,long) ;

__attribute__((used)) static char *
get_buffer(buffer_t * buf, long size)

{
  char * cp;




  if(size < 0)
    return buf->buf;

  if(!buf->buf) {
    buf->buf = malloc(size);
    if(buf->buf)
      buf->size = size;

    return buf->buf;
  }

  if((unsigned long) size <= buf->size) {



    if(buf->size - size < MIN_BYTE_GAIN)
      return buf->buf;
  }



  cp = realloc(buf->buf, size);
  if(cp) {
    buf->buf = cp;
    buf->size = size;
  }
  else if(size <= buf->size)
    cp = buf->buf;

  return cp;
}
