
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int GRAPHICS_RESOURCE_HEIGHT ;
 int GRAPHICS_RESOURCE_RGBA32 ;
 int GRAPHICS_RESOURCE_WIDTH ;
 int GRAPHICS_RGBA32 (int ,int,int,int) ;
 int VC_DISPMAN_ROT0 ;
 int assert (int) ;
 int bcm_host_init () ;
 int graphics_delete_resource (int ) ;
 int graphics_display_resource (int ,int ,int,int ,int ,int ,int ,int ,int) ;
 int graphics_get_display_size (int ,int*,int*) ;
 int graphics_resource_fill (int ,int ,int,int,int,int ) ;
 int graphics_update_displayed_resource (int ,int ,int ,int ,int ) ;
 int gx_create_window (int ,int,int,int ,int *) ;
 int gx_graphics_init (char*) ;
 int render_subtitle (int ,char const*,int ,int,int) ;

int main(void)
{
   GRAPHICS_RESOURCE_HANDLE img;
   uint32_t width, height;
   int LAYER=1;
   bcm_host_init();
   int s;

   s = gx_graphics_init(".");
   assert(s == 0);

   s = graphics_get_display_size(0, &width, &height);
   assert(s == 0);

   s = gx_create_window(0, width, height, GRAPHICS_RESOURCE_RGBA32, &img);
   assert(s == 0);


   graphics_resource_fill(img, 0, 0, width, height, GRAPHICS_RGBA32(0,0,0,0x00));

   graphics_display_resource(img, 0, LAYER, 0, 0, GRAPHICS_RESOURCE_WIDTH, GRAPHICS_RESOURCE_HEIGHT, VC_DISPMAN_ROT0, 1);

   uint32_t text_size = 10;
   while (1) {
      const char *text = "The quick brown fox jumps over the lazy dog";
      uint32_t y_offset = height-60+text_size/2;
      graphics_resource_fill(img, 0, 0, width, height, GRAPHICS_RGBA32(0,0,0,0x00));

      graphics_resource_fill(img, 0, 40, width, 1, GRAPHICS_RGBA32(0,0,0xff,0xff));


      graphics_resource_fill(img, 0, height-40, width, 1, GRAPHICS_RGBA32(0,0xff,0,0xff));


      render_subtitle(img, text, 0, text_size, y_offset);
      graphics_update_displayed_resource(img, 0, 0, 0, 0);
      text_size += 1;
      if (text_size > 50)
         text_size = 10;
   }

   graphics_display_resource(img, 0, LAYER, 0, 0, GRAPHICS_RESOURCE_WIDTH, GRAPHICS_RESOURCE_HEIGHT, VC_DISPMAN_ROT0, 0);
   graphics_delete_resource(img);

   return 0;
}
