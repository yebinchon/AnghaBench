
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int intfstream_t ;
struct TYPE_6__ {int size; int * data; } ;
struct TYPE_5__ {int writable; TYPE_2__ buf; } ;
struct TYPE_7__ {TYPE_1__ memory; int type; } ;
typedef TYPE_3__ intfstream_info_t ;


 int INTFSTREAM_MEMORY ;
 int free (int *) ;
 int intfstream_close (int *) ;
 scalar_t__ intfstream_init (TYPE_3__*) ;
 int intfstream_open (int *,int *,unsigned int,unsigned int) ;

intfstream_t *intfstream_open_memory(void *data,
      unsigned mode, unsigned hints, uint64_t size)
{
   intfstream_info_t info;
   intfstream_t *fd = ((void*)0);

   info.type = INTFSTREAM_MEMORY;
   info.memory.buf.data = (uint8_t*)data;
   info.memory.buf.size = size;
   info.memory.writable = 0;

   fd = (intfstream_t*)intfstream_init(&info);
   if (!fd)
      return ((void*)0);

   if (!intfstream_open(fd, ((void*)0), mode, hints))
      goto error;

   return fd;

error:
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   return ((void*)0);
}
