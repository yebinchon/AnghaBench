
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pktap_log ;
 int printf (char*,...) ;

__attribute__((used)) static void
pktap_hexdump(int mask, void *addr, size_t len)
{
 unsigned char *buf = addr;
 size_t i;

 if (!(pktap_log & mask))
  return;

 for (i = 0; i < len; i++) {
  unsigned char h = (buf[i] & 0xf0) >> 4;
  unsigned char l = buf[i] & 0x0f;

  if (i != 0) {
   if (i % 32 == 0)
    printf("\n");
   else if (i % 4 == 0)
    printf(" ");
  }
  printf("%c%c",
   h < 10 ? h + '0' : h - 10 + 'a',
   l < 10 ? l + '0' : l - 10 + 'a');
 }
 if (i % 32 != 0)
  printf("\n");
}
