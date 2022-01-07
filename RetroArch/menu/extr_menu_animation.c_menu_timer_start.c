
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float menu_timer_t ;
struct TYPE_5__ {int userdata; int cb; int duration; } ;
typedef TYPE_1__ menu_timer_ctx_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_6__ {uintptr_t tag; float target_value; float* subject; int userdata; int cb; int duration; int easing_enum; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_LINEAR ;
 int menu_animation_push (TYPE_2__*) ;
 int menu_timer_kill (float*) ;

void menu_timer_start(menu_timer_t *timer, menu_timer_ctx_entry_t *timer_entry)
{
   menu_animation_ctx_entry_t entry;
   menu_animation_ctx_tag tag = (uintptr_t) timer;

   menu_timer_kill(timer);

   *timer = 0.0f;

   entry.easing_enum = EASING_LINEAR;
   entry.tag = tag;
   entry.duration = timer_entry->duration;
   entry.target_value = 1.0f;
   entry.subject = timer;
   entry.cb = timer_entry->cb;
   entry.userdata = timer_entry->userdata;

   menu_animation_push(&entry);
}
