
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* ChangeVideoFormat ) (int) ;} ;
struct TYPE_3__ {scalar_t__ IsPal; } ;


 int SCSP_CLOCK_INC_NTSC ;
 int SCSP_CLOCK_INC_PAL ;
 TYPE_2__* SNDCore ;
 int scsp_clock_inc ;
 int stub1 (int) ;
 TYPE_1__ yabsys ;

int ScspChangeVideoFormat(int type)
{
   scsp_clock_inc = yabsys.IsPal ? SCSP_CLOCK_INC_PAL : SCSP_CLOCK_INC_NTSC;

   SNDCore->ChangeVideoFormat(type ? 50 : 60);

   return 0;
}
