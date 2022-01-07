
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static void manipulate(uint8_t *key)
{
   uint64_t temp = key[0x38] << 56|
      key[0x39] << 48|
      key[0x3a] << 40|
      key[0x3b] << 32|
      key[0x3c] << 24|
      key[0x3d] << 16|
      key[0x3e] << 8|
      key[0x3f];
   temp++;
   key[0x38] = (temp >> 56) & 0xff;
   key[0x39] = (temp >> 48) & 0xff;
   key[0x3a] = (temp >> 40) & 0xff;
   key[0x3b] = (temp >> 32) & 0xff;
   key[0x3c] = (temp >> 24) & 0xff;
   key[0x3d] = (temp >> 16) & 0xff;
   key[0x3e] = (temp >> 8) & 0xff;
   key[0x3f] = (temp >> 0) & 0xff;
}
