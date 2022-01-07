
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_BLACK_FRAME_INSERTION ;
 int GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES ;
 int GFX_CTX_FLAGS_MENU_FRAME_FILTERING ;
 int GFX_CTX_FLAGS_SCREENSHOTS_SUPPORTED ;

__attribute__((used)) static uint32_t vulkan_get_flags(void *data)
{
   uint32_t flags = 0;

   BIT32_SET(flags, GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES);
   BIT32_SET(flags, GFX_CTX_FLAGS_BLACK_FRAME_INSERTION);
   BIT32_SET(flags, GFX_CTX_FLAGS_MENU_FRAME_FILTERING);
   BIT32_SET(flags, GFX_CTX_FLAGS_SCREENSHOTS_SUPPORTED);

   return flags;
}
