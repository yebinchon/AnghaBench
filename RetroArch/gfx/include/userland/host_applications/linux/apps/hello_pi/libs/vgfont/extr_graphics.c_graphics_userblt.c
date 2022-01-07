
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int VGImageFormat ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {int pixmap; } ;
struct TYPE_6__ {scalar_t__ type; int const height; TYPE_1__ u; } ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_TYPE_T ;
typedef TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ GX_PBUFFER ;
 scalar_t__ GX_WINDOW ;
 scalar_t__ VCOS_EINVAL ;
 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ convert_image_type (int ,int *,int*) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,TYPE_2__*) ;
 int vcos_assert (int ) ;
 scalar_t__ vgGetError () ;
 int vgImageSubData (int ,void const*,int const,int ,int const,int const,int const,int const) ;
 int vgWritePixels (int *,int const,int ,int const,int const,int const,int const) ;

int32_t graphics_userblt(GRAPHICS_RESOURCE_TYPE_T src_type,
                         const void *src_data,
                         const uint32_t src_x,
                         const uint32_t src_y,
                         const uint32_t width,
                         const uint32_t height,
                         const uint32_t pitch,
                         GRAPHICS_RESOURCE_HANDLE dest,
                         const uint32_t x_pos,
                         const uint32_t y_pos )
{
   VCOS_STATUS_T status;
   VGImageFormat vg_src_type;
   int bytes_per_pixel;
   GX_CLIENT_STATE_T save;

   status = convert_image_type(src_type, &vg_src_type, &bytes_per_pixel);
   if (status != VCOS_SUCCESS)
      return status;

   gx_priv_save(&save, dest);

   if (dest->type == GX_PBUFFER)
   {
      vgImageSubData(dest->u.pixmap,
                     src_data,
                     pitch,
                     vg_src_type,
                     x_pos, y_pos, width, height);
   }
   else if (dest->type == GX_WINDOW)
   {


      vgWritePixels((uint8_t*)src_data + pitch*(height-1),
                    -pitch,
                    vg_src_type,
                    x_pos, dest->height-y_pos-height, width, height);
   }
   else
   {
      vcos_assert(0);
   }

   if (vgGetError() == 0)
      status = VCOS_SUCCESS;
   else
   {
      vcos_assert(0);
      status = VCOS_EINVAL;
   }

   gx_priv_restore(&save);
   return status;
}
