
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int mp3_find_sync_word(const unsigned char *buf, int size)
{
 const unsigned char *p, *pe;


 for (p = buf, pe = buf + size - 3; p <= pe; p++)
 {
  int pn;
  if (p[0] != 0xff)
   continue;
  pn = p[1];
  if ((pn & 0xf8) != 0xf8 ||
      (pn & 6) == 0) {
   p++; continue;
  }
  pn = p[2];
  if ((pn & 0xf0) < 0x20 || (pn & 0xf0) == 0xf0 ||
      (pn & 0x0c) != 0) {
   continue;
  }

  return p - buf;
 }

 return -1;
}
