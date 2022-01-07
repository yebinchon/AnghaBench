
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int frame_updated; int full_screen; int enable; int alpha; int height; int width; int rgb32; int frame; } ;
struct TYPE_9__ {int alpha_update; unsigned int alpha_mods; int apply_state_changes; int driver_data; TYPE_3__* poke; int alpha_lock; int * alpha_mod; TYPE_2__* overlay; TYPE_1__ texture; } ;
typedef TYPE_4__ thread_video_t ;
struct TYPE_8__ {int (* apply_state_changes ) (int ) ;int (* set_texture_enable ) (int ,int ,int ) ;int (* set_texture_frame ) (int ,int ,int ,int ,int ,int ) ;} ;
struct TYPE_7__ {int (* set_alpha ) (int ,unsigned int,int ) ;} ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,unsigned int,int ) ;
 int stub4 (int ) ;

__attribute__((used)) static void thread_update_driver_state(thread_video_t *thr)
{
   if (thr->apply_state_changes)
   {
      if (thr->poke && thr->poke->apply_state_changes)
         thr->poke->apply_state_changes(thr->driver_data);
      thr->apply_state_changes = 0;
   }
}
