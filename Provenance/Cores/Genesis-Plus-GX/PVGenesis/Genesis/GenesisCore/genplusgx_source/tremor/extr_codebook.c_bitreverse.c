
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_uint32_t ;



__attribute__((used)) static ogg_uint32_t bitreverse(ogg_uint32_t x){
  x= ((x>>16)&0x0000ffff) | ((x<<16)&0xffff0000);
  x= ((x>> 8)&0x00ff00ff) | ((x<< 8)&0xff00ff00);
  x= ((x>> 4)&0x0f0f0f0f) | ((x<< 4)&0xf0f0f0f0);
  x= ((x>> 2)&0x33333333) | ((x<< 2)&0xcccccccc);
  return((x>> 1)&0x55555555) | ((x<< 1)&0xaaaaaaaa);
}
