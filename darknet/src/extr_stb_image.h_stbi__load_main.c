
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int bits_per_channel; scalar_t__ num_channels; int channel_order; } ;
typedef TYPE_1__ stbi__result_info ;
typedef int stbi__context ;


 int STBI_ORDER_RGB ;
 int memset (TYPE_1__*,int ,int) ;
 void* stbi__bmp_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__bmp_test (int *) ;
 void* stbi__errpuc (char*,char*) ;
 void* stbi__gif_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__gif_test (int *) ;
 float* stbi__hdr_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__hdr_test (int *) ;
 void* stbi__hdr_to_ldr (float*,int,int,int) ;
 void* stbi__jpeg_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__jpeg_test (int *) ;
 void* stbi__pic_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__pic_test (int *) ;
 void* stbi__png_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__png_test (int *) ;
 void* stbi__pnm_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__pnm_test (int *) ;
 void* stbi__psd_load (int *,int*,int*,int*,int,TYPE_1__*,int) ;
 scalar_t__ stbi__psd_test (int *) ;
 void* stbi__tga_load (int *,int*,int*,int*,int,TYPE_1__*) ;
 scalar_t__ stbi__tga_test (int *) ;

__attribute__((used)) static void *stbi__load_main(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri, int bpc)
{
   memset(ri, 0, sizeof(*ri));
   ri->bits_per_channel = 8;
   ri->channel_order = STBI_ORDER_RGB;
   ri->num_channels = 0;


   if (stbi__jpeg_test(s)) return stbi__jpeg_load(s,x,y,comp,req_comp, ri);


   if (stbi__png_test(s)) return stbi__png_load(s,x,y,comp,req_comp, ri);


   if (stbi__bmp_test(s)) return stbi__bmp_load(s,x,y,comp,req_comp, ri);


   if (stbi__gif_test(s)) return stbi__gif_load(s,x,y,comp,req_comp, ri);


   if (stbi__psd_test(s)) return stbi__psd_load(s,x,y,comp,req_comp, ri, bpc);


   if (stbi__pic_test(s)) return stbi__pic_load(s,x,y,comp,req_comp, ri);


   if (stbi__pnm_test(s)) return stbi__pnm_load(s,x,y,comp,req_comp, ri);



   if (stbi__hdr_test(s)) {
      float *hdr = stbi__hdr_load(s, x,y,comp,req_comp, ri);
      return stbi__hdr_to_ldr(hdr, *x, *y, req_comp ? req_comp : *comp);
   }




   if (stbi__tga_test(s))
      return stbi__tga_load(s,x,y,comp,req_comp, ri);


   return stbi__errpuc("unknown image type", "Image not of any known type, or corrupt");
}
