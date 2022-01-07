
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int64_t ;
typedef int RFILE ;


 size_t filestream_read (int *,void*,size_t) ;

int64_t rfread(void* buffer,
   size_t elem_size, size_t elem_count, RFILE* stream)
{
   return (filestream_read(stream, buffer, elem_size * elem_count) / elem_size);
}
