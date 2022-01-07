
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clearVRAM; int menu_filter; int menuTexture; } ;
typedef TYPE_1__ ps2_video_t ;


 int GS_PSM_CT16 ;
 int GS_PSM_CT32 ;
 int texture_need_prepare (int ,unsigned int,unsigned int,int) ;
 int transfer_texture (int ,void const*,unsigned int,unsigned int,int,int ,int) ;

__attribute__((used)) static void ps2_set_texture_frame(void *data, const void *frame, bool rgb32,
                               unsigned width, unsigned height, float alpha)
{
   ps2_video_t *ps2 = (ps2_video_t*)data;

   bool color_correction = 0;
   int PSM = (rgb32 ? GS_PSM_CT32 : GS_PSM_CT16);
   bool texture_changed = texture_need_prepare(ps2->menuTexture, width, height, PSM);

   transfer_texture(ps2->menuTexture, frame, width, height, PSM, ps2->menu_filter, color_correction);
   ps2->clearVRAM = ps2->clearVRAM || texture_changed;
}
