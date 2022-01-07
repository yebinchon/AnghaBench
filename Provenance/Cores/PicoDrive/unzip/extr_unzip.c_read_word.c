
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;



__attribute__((used)) static UINT16 read_word (char *buf) {
   unsigned char *ubuf = (unsigned char *) buf;

   return ((UINT16)ubuf[1] << 8) | (UINT16)ubuf[0];
}
