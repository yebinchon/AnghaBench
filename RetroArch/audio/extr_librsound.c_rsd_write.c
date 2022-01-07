
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int chunk_size; } ;
struct TYPE_7__ {int buffer_size; TYPE_1__ backend_info; int ready_for_data; } ;
typedef TYPE_2__ rsound_t ;


 int retro_assert (int ) ;
 int rsd_stop (TYPE_2__*) ;
 size_t rsnd_fill_buffer (TYPE_2__*,char const*,size_t) ;

size_t rsd_write( rsound_t *rsound, const void* buf, size_t size)
{
   size_t max_write, written = 0;
   retro_assert(rsound != ((void*)0));
   if ( !rsound->ready_for_data )
      return 0;

   max_write = (rsound->buffer_size - rsound->backend_info.chunk_size)/2;



   while ( written < size )
   {
      size_t write_size = (size - written) > max_write ? max_write : (size - written);
      size_t result = rsnd_fill_buffer(rsound, (const char*)buf + written, write_size);

      if (result == 0)
      {
         rsd_stop(rsound);
         return 0;
      }
      written += result;
   }
   return written;
}
