
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bps_data {int target_checksum; int output_offset; int * target_data; } ;


 int encoding_crc32 (int ,int *,int) ;

__attribute__((used)) static void bps_write(struct bps_data *bps, uint8_t data)
{
   bps->target_data[bps->output_offset++] = data;
   bps->target_checksum = ~(encoding_crc32(~bps->target_checksum, &data, 1));
}
