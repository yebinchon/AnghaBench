
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char SKDP_END_CHAR ;
 char SKDP_START_CHAR ;
 int kdp_serial_out (unsigned char,void (*) (char)) ;
 scalar_t__ z_crc32 (int ,unsigned char*,unsigned int) ;

void kdp_serialize_packet(unsigned char *packet, unsigned int len, void (*outFunc)(char))
{
 unsigned int index;
 unsigned char byte;
 uint32_t crc;


 crc = (uint32_t) z_crc32(0, packet, len);
 outFunc(SKDP_START_CHAR);
 kdp_serial_out((crc >> 0), outFunc);
 kdp_serial_out((crc >> 8), outFunc);
 kdp_serial_out((crc >> 16), outFunc);
 kdp_serial_out((crc >> 24), outFunc);

 outFunc(SKDP_START_CHAR);
 for (index = 0; index < len; index++) {
  byte = *packet++;
  kdp_serial_out(byte, outFunc);
 }
 outFunc(SKDP_END_CHAR);
}
