
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bps_data {int modify_checksum; int modify_offset; int * modify_data; } ;


 int encoding_crc32 (int ,int *,int) ;

__attribute__((used)) static uint8_t bps_read(struct bps_data *bps)
{
   uint8_t data = bps->modify_data[bps->modify_offset++];
   bps->modify_checksum = ~(encoding_crc32(
         ~bps->modify_checksum, &data, 1));
   return data;
}
