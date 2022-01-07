
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



void processing_bgr_xrgb(uint8_t *src, uint32_t *dst, int width, int height) {

   int i;
   for (i = 0; i < width * height; i+=1, src += 3, dst += 1) {
      *dst = 0xFF << 24 | src[2] << 16 | src[1] << 8 | src[0] << 0;
   }
}
