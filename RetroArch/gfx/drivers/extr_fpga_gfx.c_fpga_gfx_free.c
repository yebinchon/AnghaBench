
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fpga_t ;
struct TYPE_3__ {int only_munmap; scalar_t__ only_mmap; } ;


 int do_mmap_op (TYPE_1__*) ;
 int font_driver_free_osd () ;
 int * fpga_menu_frame ;
 int free (int *) ;
 TYPE_1__ regOp ;
 int video_context_driver_free () ;

__attribute__((used)) static void fpga_gfx_free(void *data)
{
   fpga_t *fpga = (fpga_t*)data;

   if (fpga_menu_frame)
   {
      free(fpga_menu_frame);
      fpga_menu_frame = ((void*)0);
   }

   if (!fpga)
      return;

   font_driver_free_osd();
   video_context_driver_free();

   free(fpga);

   regOp.only_mmap = 0;
   regOp.only_munmap = 1;

   do_mmap_op(&regOp);
}
