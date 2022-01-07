
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef scalar_t__ png_structp ;
struct TYPE_5__ {scalar_t__ pread; int * next; int * current; } ;
typedef TYPE_1__ png_store ;
typedef int png_size_t ;
typedef int png_infop ;
typedef int png_byte ;


 int png_error (scalar_t__,char*) ;
 int png_process_data (scalar_t__,int ,int *,int) ;
 scalar_t__ store_read_buffer_avail (TYPE_1__*) ;
 scalar_t__ store_read_chunk (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static void
store_progressive_read(png_store *ps, png_structp pp, png_infop pi)
{
   if (ps->pread != pp || ps->current == ((void*)0) || ps->next == ((void*)0))
      png_error(pp, "store state damaged (progressive)");







   while (store_read_buffer_avail(ps) > 0)
   {
      static png_uint_32 noise = 2;
      png_size_t cb;
      png_byte buffer[512];


      noise = (noise << 9) | ((noise ^ (noise >> (9-5))) & 0x1ff);
      cb = noise & 0x1ff;
      cb -= store_read_chunk(ps, buffer, cb, 1);
      png_process_data(pp, pi, buffer, cb);
   }
}
