
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



void
fix_desc(void *d, int num_desc) {

 uint8_t *desc = (uint8_t*) d;

 do {
  if ((desc[7] & 0x14) == 0x04) {
   uint32_t offset;
   uint16_t selector;
   uint8_t wordcount;
   uint8_t acc;

   offset = *((uint32_t*)(desc));
   selector = *((uint32_t*)(desc+4));
   wordcount = desc[6] >> 4;
   acc = desc[7];

   *((uint16_t*)desc) = offset & 0xFFFF;
   *((uint16_t*)(desc+2)) = selector;
   desc[4] = wordcount;
   desc[5] = acc;
   *((uint16_t*)(desc+6)) = offset >> 16;

  } else {
   uint32_t base;
   uint16_t limit;
   uint8_t acc1, acc2;

   base = *((uint32_t*)(desc));
   limit = *((uint16_t*)(desc+4));
   acc2 = desc[6];
   acc1 = desc[7];

   *((uint16_t*)(desc)) = limit;
   *((uint16_t*)(desc+2)) = base & 0xFFFF;
   desc[4] = (base >> 16) & 0xFF;
   desc[5] = acc1;
   desc[6] = acc2;
   desc[7] = base >> 24;
  }
  desc += 8;
 } while (--num_desc);
}
