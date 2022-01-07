
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {scalar_t__ format; scalar_t__ storage; scalar_t__ aux; scalar_t__ stride; void* height; void* width; } ;
typedef TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef scalar_t__ EGLNativePixmapType ;


 scalar_t__ convert_format (void*) ;

bool platform_get_pixmap_info(EGLNativePixmapType pixmap, KHRN_IMAGE_WRAP_T *image)
{
   image->format = convert_format(((uint32_t *)pixmap)[4]);
   image->width = ((uint32_t *)pixmap)[2];
   image->height = ((uint32_t *)pixmap)[3];


   image->stride = 0;
   image->aux = 0;
   image->storage = 0;

   return image->format != 0;
}
