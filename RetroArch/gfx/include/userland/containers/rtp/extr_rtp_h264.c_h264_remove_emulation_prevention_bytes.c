
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int NAL_UNIT_EXTENSION ;
 int NAL_UNIT_PREFIX ;
 int memmove (int*,int*,int) ;

__attribute__((used)) static uint32_t h264_remove_emulation_prevention_bytes(uint8_t *sprop,
      uint32_t sprop_size)
{
   uint32_t offset = 0;
   uint8_t nal_unit_type = sprop[offset++];
   uint32_t new_sprop_size = sprop_size;
   uint8_t first_byte, second_byte;

   nal_unit_type &= 0x1F;


   if (nal_unit_type == NAL_UNIT_PREFIX || nal_unit_type == NAL_UNIT_EXTENSION)
      offset += 3;


   if (offset + 2 >= new_sprop_size)
      return new_sprop_size;


   first_byte = sprop[offset++];
   second_byte = sprop[offset++];

   while (offset < new_sprop_size)
   {
      uint8_t next_byte = sprop[offset];

      if (!first_byte && !second_byte && next_byte == 0x03)
      {

         new_sprop_size--;
         if (offset == new_sprop_size)
            break;
         memmove(&sprop[offset], &sprop[offset + 1], new_sprop_size - offset);
         next_byte = sprop[offset];
      } else
         offset++;

      first_byte = second_byte;
      second_byte = next_byte;
   }

   return new_sprop_size;
}
