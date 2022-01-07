
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int stride; int height; int format; int width; scalar_t__ storage; } ;
typedef TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef int EGLImageKHR ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTIMAGESETCOLORDATA_ID ;
 int KHDISPATCH_WORKSPACE_SIZE ;
 int RPC_CALL8_IN_BULK (int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,char const*,int) ;
 int RPC_EGLID (int ) ;
 int RPC_INT (int) ;
 int RPC_UINT (int) ;
 int _min (int,int) ;
 int assert (int) ;
 int eglIntImageSetColorData_impl ;
 scalar_t__ khrn_image_is_brcm1 (int) ;

__attribute__((used)) static void set_egl_image_color_data(EGLImageKHR egl_image, KHRN_IMAGE_WRAP_T *image)
{
   int line_size = (image->stride < 0) ? -image->stride : image->stride;
   int lines = KHDISPATCH_WORKSPACE_SIZE / line_size;
   int offset = 0;
   int height = image->height;

   if (khrn_image_is_brcm1(image->format))
      lines &= ~63;

   assert(lines > 0);

   while (height > 0) {
      int batch = _min(lines, height);
      uint32_t len = batch * line_size;

      CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
      int adjusted_offset = (image->stride < 0) ? (offset + (batch - 1)) : offset;

      RPC_CALL8_IN_BULK(eglIntImageSetColorData_impl,
         thread,
         EGLINTIMAGESETCOLORDATA_ID,
         RPC_EGLID(egl_image),
         RPC_UINT(image->format),
         RPC_UINT(0),
         RPC_INT(offset),
         RPC_UINT(image->width),
         RPC_INT(batch),
         RPC_UINT(image->stride),
         (const char *)image->storage + adjusted_offset * image->stride,
         len);

      offset += batch;
      height -= batch;
   }
}
