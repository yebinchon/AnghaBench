
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_HEIGHT ;
 int DISPLAY_WIDTH ;
 int SCE_GXM_STENCIL_FUNC_ALWAYS ;
 int SCE_GXM_STENCIL_FUNC_EQUAL ;
 int SCE_GXM_STENCIL_FUNC_NEVER ;
 int SCE_GXM_STENCIL_OP_KEEP ;
 int SCE_GXM_STENCIL_OP_REPLACE ;
 int SCE_GXM_STENCIL_OP_ZERO ;
 int _vita2d_context ;
 int clip_rect_x_max ;
 int clip_rect_x_min ;
 int clip_rect_y_max ;
 int clip_rect_y_min ;
 scalar_t__ clipping_enabled ;
 scalar_t__ drawing ;
 int sceGxmSetFrontStencilFunc (int ,int ,int ,int ,int ,int,int) ;
 int vita2d_draw_rectangle (int,int,int,int,int ) ;

void vita2d_set_clip_rectangle(int x_min, int y_min, int x_max, int y_max)
{
 clip_rect_x_min = x_min;
 clip_rect_y_min = y_min;
 clip_rect_x_max = x_max;
 clip_rect_y_max = y_max;

 if(drawing) {

  sceGxmSetFrontStencilFunc(
   _vita2d_context,
   SCE_GXM_STENCIL_FUNC_NEVER,
   SCE_GXM_STENCIL_OP_ZERO,
   SCE_GXM_STENCIL_OP_ZERO,
   SCE_GXM_STENCIL_OP_ZERO,
   0xFF,
   0xFF);
  vita2d_draw_rectangle(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT, 0);

  sceGxmSetFrontStencilFunc(
   _vita2d_context,
   SCE_GXM_STENCIL_FUNC_NEVER,
   SCE_GXM_STENCIL_OP_REPLACE,
   SCE_GXM_STENCIL_OP_REPLACE,
   SCE_GXM_STENCIL_OP_REPLACE,
   0xFF,
   0xFF);
  vita2d_draw_rectangle(x_min, y_min, x_max - x_min, y_max - y_min, 0);
  if(clipping_enabled) {

   sceGxmSetFrontStencilFunc(
    _vita2d_context,
    SCE_GXM_STENCIL_FUNC_EQUAL,
    SCE_GXM_STENCIL_OP_KEEP,
    SCE_GXM_STENCIL_OP_KEEP,
    SCE_GXM_STENCIL_OP_KEEP,
    0xFF,
    0xFF);
  } else {
   sceGxmSetFrontStencilFunc(
    _vita2d_context,
    SCE_GXM_STENCIL_FUNC_ALWAYS,
    SCE_GXM_STENCIL_OP_KEEP,
    SCE_GXM_STENCIL_OP_KEEP,
    SCE_GXM_STENCIL_OP_KEEP,
    0xFF,
    0xFF);
  }
 }
}
