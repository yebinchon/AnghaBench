
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* coreTexture; int interface_version; int interface_type; } ;
struct TYPE_5__ {void* coreTexture; TYPE_1__ iface; void* menuTexture; int gsGlobal; } ;
typedef TYPE_2__ ps2_video_t ;


 int RETRO_HW_RENDER_INTERFACE_GSKIT_PS2 ;
 int RETRO_HW_RENDER_INTERFACE_GSKIT_PS2_VERSION ;
 int init_GSGlobal () ;
 void* prepare_new_texture () ;

__attribute__((used)) static void init_ps2_video(ps2_video_t *ps2)
{
   ps2->gsGlobal = init_GSGlobal();
   ps2->menuTexture = prepare_new_texture();
   ps2->coreTexture = prepare_new_texture();


   ps2->iface.interface_type = RETRO_HW_RENDER_INTERFACE_GSKIT_PS2;
   ps2->iface.interface_version = RETRO_HW_RENDER_INTERFACE_GSKIT_PS2_VERSION;
   ps2->iface.coreTexture = ps2->coreTexture;
}
