
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* crc_table ;
 int crc_table_computed ;
 int make_crc_table () ;

__attribute__((used)) static unsigned long update_crc(unsigned long crc, unsigned char *buf, int len)
{
 unsigned long c = crc;
 int n;

 if (!crc_table_computed)
  make_crc_table();
 for (n = 0; n < len; n++) {
  c = crc_table[(c ^ buf[n]) & 0xff] ^ (c >> 8);
 }
 return c;
}
