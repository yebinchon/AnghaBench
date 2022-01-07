
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ups_data {size_t target_offset; size_t target_length; int target_checksum; int * target_data; } ;


 int encoding_crc32 (int ,int *,int) ;

__attribute__((used)) static void ups_target_write(struct ups_data *data, uint8_t n)
{

   if (data && data->target_offset < data->target_length)
   {
      data->target_data[data->target_offset] = n;
      data->target_checksum =
         ~(encoding_crc32(~data->target_checksum, &n, 1));
   }

   if (data)
      data->target_offset++;
}
