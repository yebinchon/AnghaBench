
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int * g_buffer ;
 int g_size ;

void memstream_set_buffer(uint8_t *buffer, uint64_t size)
{
   g_buffer = buffer;
   g_size = size;
}
