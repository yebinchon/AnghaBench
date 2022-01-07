
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* poly5tbl ;

__attribute__((used)) static void build_poly5(void)
{
 unsigned char c;
 unsigned char i;
 unsigned char poly5 = 1;

 for(i = 0; i < 31; i++) {
  poly5tbl[i] = ~poly5;
  c = ((poly5 >> 2) ^ (poly5 >> 4)) & 1;
  poly5 = ((poly5 << 1) & 31) + c;
 }
}
