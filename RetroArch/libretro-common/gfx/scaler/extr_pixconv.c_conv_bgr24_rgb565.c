
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



void conv_bgr24_rgb565(void *output_, const void *input_,
      int width, int height,
      int out_stride, int in_stride)
{
   int h, w;
   const uint8_t *input = (const uint8_t*)input_;
   uint16_t *output = (uint16_t*)output_;
   for (h = 0; h < height;
         h++, output += out_stride, input += in_stride)
   {
      const uint8_t *inp = input;
      for (w = 0; w < width; w++)
      {
         uint16_t b = *inp++;
         uint16_t g = *inp++;
         uint16_t r = *inp++;

         output[w] = ((r & 0x00F8) << 8) | ((g&0x00FC) << 3) | ((b&0x00F8) >> 3);
      }
   }
}
