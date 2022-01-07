
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCE_GXM_STENCIL_FUNC_ALWAYS ;
 int SCE_GXM_STENCIL_OP_KEEP ;
 int _vita2d_context ;
 scalar_t__ clipping_enabled ;
 int sceGxmSetFrontStencilFunc (int ,int ,int ,int ,int ,int,int) ;

void vita2d_disable_clipping()
{
 clipping_enabled = 0;
 sceGxmSetFrontStencilFunc(
   _vita2d_context,
   SCE_GXM_STENCIL_FUNC_ALWAYS,
   SCE_GXM_STENCIL_OP_KEEP,
   SCE_GXM_STENCIL_OP_KEEP,
   SCE_GXM_STENCIL_OP_KEEP,
   0xFF,
   0xFF);
}
