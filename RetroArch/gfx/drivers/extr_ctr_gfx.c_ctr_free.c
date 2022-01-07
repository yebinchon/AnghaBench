
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* buffer; } ;
struct TYPE_9__ {TYPE_5__* frame_coords; TYPE_5__* texture_swizzled; TYPE_5__* texture_linear; } ;
struct TYPE_7__ {int left; } ;
struct TYPE_8__ {TYPE_1__ top; } ;
struct TYPE_11__ {TYPE_4__ vertex_cache; struct TYPE_11__* empty_framebuffer; TYPE_3__ menu; struct TYPE_11__* frame_coords; struct TYPE_11__* texture_swizzled; struct TYPE_11__* texture_linear; struct TYPE_11__* display_list; TYPE_2__ drawbuffers; int dvlb; int shader; int lcd_aptHook; } ;
typedef TYPE_5__ ctr_video_t ;


 int DVLB_Free (int ) ;
 int GSPGPU_EVENT_VBlank0 ;
 int aptUnhook (int *) ;
 int gfxExit () ;
 int gspSetEventCallback (int ,int *,int *,int) ;
 int linearFree (TYPE_5__*) ;
 int shaderProgramFree (int *) ;
 int vramFree (int ) ;

__attribute__((used)) static void ctr_free(void* data)
{
   ctr_video_t* ctr = (ctr_video_t*)data;

   if (!ctr)
      return;

   aptUnhook(&ctr->lcd_aptHook);
   gspSetEventCallback(GSPGPU_EVENT_VBlank0, ((void*)0), ((void*)0), 1);
   shaderProgramFree(&ctr->shader);
   DVLB_Free(ctr->dvlb);
   vramFree(ctr->drawbuffers.top.left);
   linearFree(ctr->display_list);
   linearFree(ctr->texture_linear);
   linearFree(ctr->texture_swizzled);
   linearFree(ctr->frame_coords);
   linearFree(ctr->menu.texture_linear);
   linearFree(ctr->menu.texture_swizzled);
   linearFree(ctr->menu.frame_coords);
   linearFree(ctr->empty_framebuffer);
   linearFree(ctr->vertex_cache.buffer);
   linearFree(ctr);



}
