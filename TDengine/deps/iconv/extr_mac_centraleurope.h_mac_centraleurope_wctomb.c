
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* mac_centraleurope_page00 ;
 unsigned char* mac_centraleurope_page20 ;
 unsigned char* mac_centraleurope_page22 ;
 unsigned char* mac_centraleurope_page22_1 ;

__attribute__((used)) static int
mac_centraleurope_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0180)
    c = mac_centraleurope_page00[wc-0x00a0];
  else if (wc == 0x02c7)
    c = 0xff;
  else if (wc >= 0x2010 && wc < 0x2040)
    c = mac_centraleurope_page20[wc-0x2010];
  else if (wc == 0x2122)
    c = 0xaa;
  else if (wc >= 0x2200 && wc < 0x2220)
    c = mac_centraleurope_page22[wc-0x2200];
  else if (wc >= 0x2260 && wc < 0x2268)
    c = mac_centraleurope_page22_1[wc-0x2260];
  else if (wc == 0x25ca)
    c = 0xd7;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
