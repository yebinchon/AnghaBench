
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int GRAPHICS_RESOURCE_HEIGHT ;
 int GRAPHICS_RESOURCE_WIDTH ;
 int GRAPHICS_RGBA32 (int,int,int,int) ;
 int graphics_get_resource_size (int ,int*,int*) ;
 scalar_t__ graphics_resource_render_text_ext (int ,int,int const,int ,int ,int ,int ,char const*,int,int const) ;
 scalar_t__ graphics_resource_text_dimensions_ext (int ,char const*,int,int*,int*,int const) ;
 int strlen (char const*) ;
 char* strnchr (char const*,int,char) ;

int32_t render_subtitle(GRAPHICS_RESOURCE_HANDLE img, const char *text, const int skip, const uint32_t text_size, const uint32_t y_offset)
{
   uint32_t text_length = strlen(text)-skip;
   uint32_t width=0, height=0;
   const char *split = text;
   int32_t s=0;
   int len = 0;
   uint32_t img_w, img_h;

   graphics_get_resource_size(img, &img_w, &img_h);

   if (text_length==0)
      return 0;
   while (split[0]) {
      s = graphics_resource_text_dimensions_ext(img, split, text_length-(split-text), &width, &height, text_size);
      if (s != 0) return s;
      if (width > img_w) {
         const char *space = strnchr(split, text_length-(split-text), ' ');
         if (!space) {
            len = split+1-text;
            split = split+1;
         } else {
            len = space-text;
            split = space+1;
         }
      } else {
         break;
      }
   }

   if (width) {
      s = graphics_resource_render_text_ext(img, (img_w - width)>>1, y_offset-height,
                                     GRAPHICS_RESOURCE_WIDTH,
                                     GRAPHICS_RESOURCE_HEIGHT,
                                     GRAPHICS_RGBA32(0xff,0xff,0xff,0xff),
                                     GRAPHICS_RGBA32(0,0,0,0x80),
                                     split, text_length-(split-text), text_size);
      if (s!=0) return s;
   }
   return render_subtitle(img, text, skip+text_length-len, text_size, y_offset - height);
}
