
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* crc_table ;
 int crc_table_computed ;

__attribute__((used)) static void make_crc_table(void)
{
 unsigned long c;
 int n, k;

 for (n = 0; n < 256; n++) {
  c = (unsigned long) n;
  for (k = 0; k < 8; k++) {
   if (c & 1)
    c = 0xedb88320L ^ (c >> 1);
   else
    c = c >> 1;
  }
  crc_table[n] = c;
 }
 crc_table_computed = 1;
}
