
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int RFILE ;


 int filestream_write (int *,void const*,size_t) ;

int64_t rfwrite(void const* buffer,
   size_t elem_size, size_t elem_count, RFILE* stream)
{
   return filestream_write(stream, buffer, elem_size * elem_count);
}
