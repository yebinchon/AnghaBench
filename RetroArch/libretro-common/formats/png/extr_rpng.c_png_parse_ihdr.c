
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct png_ihdr {scalar_t__ width; scalar_t__ height; void* interlace; void* filter; void* compression; void* color_type; void* depth; } ;


 void* dword_be (void**) ;

__attribute__((used)) static bool png_parse_ihdr(uint8_t *buf,
      struct png_ihdr *ihdr)
{
   buf += 4 + 4;

   ihdr->width = dword_be(buf + 0);
   ihdr->height = dword_be(buf + 4);
   ihdr->depth = buf[8];
   ihdr->color_type = buf[9];
   ihdr->compression = buf[10];
   ihdr->filter = buf[11];
   ihdr->interlace = buf[12];

   if (ihdr->width == 0 || ihdr->height == 0)
      return 0;

   return 1;
}
