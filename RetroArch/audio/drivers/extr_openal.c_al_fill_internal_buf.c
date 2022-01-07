
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tmpbuf_ptr; scalar_t__ tmpbuf; } ;
typedef TYPE_1__ al_t ;


 scalar_t__ BUFSIZE ;
 size_t MIN (scalar_t__,size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;

__attribute__((used)) static size_t al_fill_internal_buf(al_t *al, const void *buf, size_t size)
{
   size_t read_size = MIN(BUFSIZE - al->tmpbuf_ptr, size);
   memcpy(al->tmpbuf + al->tmpbuf_ptr, buf, read_size);
   al->tmpbuf_ptr += read_size;
   return read_size;
}
