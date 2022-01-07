
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memstream_t ;


 scalar_t__ calloc (int,int) ;
 int * g_buffer ;
 scalar_t__ g_size ;
 int memstream_init (int *,int *,scalar_t__,unsigned int) ;

memstream_t *memstream_open(unsigned writing)
{
   memstream_t *stream;
   if (!g_buffer || !g_size)
      return ((void*)0);

   stream = (memstream_t*)calloc(1, sizeof(*stream));
   memstream_init(stream, g_buffer, g_size, writing);

   g_buffer = ((void*)0);
   g_size = 0;
   return stream;
}
