
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* poly17tbl ;

__attribute__((used)) static void build_poly17(void)
{
 unsigned int c;
 unsigned int i;
 unsigned int poly17 = 1;

 for(i = 0; i < 131071; i++) {
  poly17tbl[i] = (unsigned char) poly17;
  c = ((poly17 >> 11) ^ (poly17 >> 16)) & 1;
  poly17 = ((poly17 << 1) & 131071) + c;
 }
}
