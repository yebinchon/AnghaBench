
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dList; void* frame; scalar_t__ frame_coords; } ;
struct TYPE_4__ {void* main_dList; void* frame_dList; TYPE_1__ menu; scalar_t__ frame_coords; } ;
typedef TYPE_2__ psp1_video_t ;


 int GU_FALSE ;
 int PSP_VBLANK_INT ;
 void* TO_CACHED_PTR (scalar_t__) ;
 int free (void*) ;
 int sceDisplayWaitVblankStart () ;
 int sceGuDisplay (int ) ;
 int sceGuTerm () ;
 int sceKernelDisableSubIntr (int ,int ) ;
 int sceKernelReleaseSubIntrHandler (int ,int ) ;

__attribute__((used)) static void psp_free(void *data)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if(!(psp) || !(psp->main_dList))
      return;

   sceDisplayWaitVblankStart();
   sceGuDisplay(GU_FALSE);
   sceGuTerm();

   if (psp->main_dList)
      free(psp->main_dList);
   if (psp->frame_dList)
      free(psp->frame_dList);
   if (psp->frame_coords)
      free(TO_CACHED_PTR(psp->frame_coords));
   if (psp->menu.frame_coords)
      free(TO_CACHED_PTR(psp->menu.frame_coords));
   if (psp->menu.dList)
      free(psp->menu.dList);
   if (psp->menu.frame)
      free(psp->menu.frame);

   free(data);

   sceKernelDisableSubIntr(PSP_VBLANK_INT, 0);
   sceKernelReleaseSubIntrHandler(PSP_VBLANK_INT,0);
}
