
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ups_data {scalar_t__ source_offset; scalar_t__ source_length; int* source_data; int source_checksum; } ;


 int encoding_crc32 (int ,int*,int) ;

__attribute__((used)) static uint8_t ups_source_read(struct ups_data *data)
{
   if (data && data->source_offset < data->source_length)
   {
      uint8_t n = data->source_data[data->source_offset++];
      data->source_checksum =
         ~(encoding_crc32(~data->source_checksum, &n, 1));
      return n;
   }
   return 0x00;
}
