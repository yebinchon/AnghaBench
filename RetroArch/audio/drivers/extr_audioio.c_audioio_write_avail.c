
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t audioio_buffer_size (void*) ;

__attribute__((used)) static size_t audioio_write_avail(void *data)
{
   return audioio_buffer_size(data);
}
