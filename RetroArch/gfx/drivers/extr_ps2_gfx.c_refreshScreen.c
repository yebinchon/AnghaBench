
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clearVRAM; int gsGlobal; scalar_t__ vsync; } ;
typedef TYPE_1__ ps2_video_t ;


 int gsKit_queue_exec (int ) ;
 int gsKit_sync_flip (int ) ;

__attribute__((used)) static void refreshScreen(ps2_video_t *ps2)
{
   if (ps2->vsync) {
      gsKit_sync_flip(ps2->gsGlobal);
   }
   gsKit_queue_exec(ps2->gsGlobal);



   ps2->clearVRAM = 0;
}
