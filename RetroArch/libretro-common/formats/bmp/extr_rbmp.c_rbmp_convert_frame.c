
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void rbmp_convert_frame(uint32_t *frame, unsigned width, unsigned height)
{
   uint32_t *end = frame + (width * height * sizeof(uint32_t))/4;

   while(frame < end)
   {
      uint32_t pixel = *frame;
      *frame = (pixel & 0xff00ff00) | ((pixel << 16) & 0x00ff0000) | ((pixel >> 16) & 0xff);
      frame++;
   }
}
