
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int display; TYPE_2__* slots; } ;
typedef TYPE_1__ VIDTEX_T ;
struct TYPE_6__ {int * image; int * video_frame; } ;
typedef TYPE_2__ VIDTEX_IMAGE_SLOT_T ;


 int eglDestroyImageKHR (int ,int *) ;
 int vcos_countof (TYPE_2__*) ;
 int vcos_log_trace (char*,int *) ;

__attribute__((used)) static void vidtex_destroy_images(VIDTEX_T *vt)
{
   VIDTEX_IMAGE_SLOT_T *slot;

   for (slot = vt->slots; slot < vt->slots + vcos_countof(vt->slots); slot++)
   {
      slot->video_frame = ((void*)0);

      if (slot->image)
      {
         vcos_log_trace("Destroying EGL image %p", slot->image);
         eglDestroyImageKHR(vt->display, slot->image);
         slot->image = ((void*)0);
      }
   }
}
