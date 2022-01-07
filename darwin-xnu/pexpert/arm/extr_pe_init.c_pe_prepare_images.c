
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {int v_rotate; int v_scale; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_5__ {size_t dx; size_t dy; size_t width; size_t height; size_t count; } ;


 TYPE_3__ PE_state ;
 TYPE_2__ default_progress ;
 int * default_progress_data ;
 int * kalloc (size_t) ;
 size_t scale ;

__attribute__((used)) static void
pe_prepare_images(void)
{
 if ((1 & PE_state.video.v_rotate) != 0) {




  uint32_t tmp = default_progress.dx;
  default_progress.dx = default_progress.dy;
  default_progress.dy = tmp;
 }
}
