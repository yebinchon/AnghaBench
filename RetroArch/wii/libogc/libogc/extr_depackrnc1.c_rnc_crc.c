
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long rnc_crc (void *data, long len) {
    unsigned short crctab[256];
    unsigned short val;
    int i, j;
    unsigned char *p = data;

    for (i=0; i<256; i++) {
 val = i;

 for (j=0; j<8; j++) {
     if (val & 1)
  val = (val >> 1) ^ 0xA001;
     else
  val = (val >> 1);
 }
 crctab[i] = val;
    }

    val = 0;
    while (len--) {
 val ^= *p++;
 val = (val >> 8) ^ crctab[val & 0xFF];
    }

    return val;
}
