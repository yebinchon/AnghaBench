
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outp (int,unsigned char) ;

__attribute__((used)) static void vga_upload_palette(void)
{
   unsigned i;
   unsigned char r = 0;
   unsigned char g = 0;
   unsigned char b = 0;

   outp(0x03c8, 0);


   for (i = 0; i < 256; i++)
   {
      if (i > 0 && i % 64 == 0)
      {
         r = 0;
         g = 0;
         b++;
      }
      else if (i > 0 && i % 8 == 0)
      {
         r = 0;
         g++;
      }

      outp(0x03c9, r * (63.0f / 7.0f));
      outp(0x03c9, g * (63.0f / 7.0f));
      outp(0x03c9, b * (63.0f / 3.0f));

      r++;
   }
}
