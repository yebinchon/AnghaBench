
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int qsynth_read_variable(uint8_t *data, uint32_t *val)
{
   int i = 0;
   *val = 0;
   do {
      *val = (*val << 7) + (data[i] & 0x7f);
   } while(data[i++] & 0x80);

   return i;
}
