
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
typedef TYPE_1__ vita2d_display_data ;
struct TYPE_6__ {int size; int height; int width; int pixelformat; int pitch; int base; } ;
typedef TYPE_2__ SceDisplayFrameBuf ;


 int DISPLAY_HEIGHT ;
 int DISPLAY_PIXEL_FORMAT ;
 int DISPLAY_STRIDE_IN_PIXELS ;
 int DISPLAY_WIDTH ;
 int SCE_DISPLAY_SETBUF_NEXTFRAME ;
 int memset (TYPE_2__*,int,int) ;
 int sceDisplaySetFrameBuf (TYPE_2__*,int ) ;
 int sceDisplayWaitVblankStart () ;
 scalar_t__ vblank_wait ;

__attribute__((used)) static void display_callback(const void *callback_data)
{
 SceDisplayFrameBuf framebuf;
 const vita2d_display_data *display_data = (const vita2d_display_data *)callback_data;

 memset(&framebuf, 0x00, sizeof(SceDisplayFrameBuf));
 framebuf.size = sizeof(SceDisplayFrameBuf);
 framebuf.base = display_data->address;
 framebuf.pitch = DISPLAY_STRIDE_IN_PIXELS;
 framebuf.pixelformat = DISPLAY_PIXEL_FORMAT;
 framebuf.width = DISPLAY_WIDTH;
 framebuf.height = DISPLAY_HEIGHT;
 sceDisplaySetFrameBuf(&framebuf, SCE_DISPLAY_SETBUF_NEXTFRAME);

 if (vblank_wait) {
  sceDisplayWaitVblankStart();
 }
}
