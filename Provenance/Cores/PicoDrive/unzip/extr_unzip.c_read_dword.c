
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;



__attribute__((used)) static UINT32 read_dword (char *buf) {
   unsigned char *ubuf = (unsigned char *) buf;

   return ((UINT32)ubuf[3] << 24) | ((UINT32)ubuf[2] << 16) | ((UINT32)ubuf[1] << 8) | (UINT32)ubuf[0];
}
