
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DO1_CRC32 (unsigned char const*) ;
 int DO8_CRC32 (unsigned char const*) ;

unsigned long crc32(unsigned long crc, const unsigned char *buf, unsigned int len)
{
 if (buf == 0) return 0L;
 crc = crc ^ 0xffffffffL;
 while (len >= 8)
 {
 DO8_CRC32(buf);
 len -= 8;
 }
 if (len) do {
 DO1_CRC32(buf);
 } while (--len);
 return crc ^ 0xffffffffL;
}
