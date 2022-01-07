
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int duration; TYPE_2__* userdata; int cb; } ;
typedef TYPE_1__ menu_timer_ctx_entry_t ;
struct TYPE_5__ {int timer; int entry; } ;
typedef TYPE_2__ menu_delayed_animation_t ;
typedef int menu_animation_ctx_entry_t ;


 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int menu_delayed_animation_cb ;
 int menu_timer_start (int *,TYPE_1__*) ;

void menu_animation_push_delayed(unsigned delay, menu_animation_ctx_entry_t *entry)
{
   menu_timer_ctx_entry_t timer_entry;
   menu_delayed_animation_t *delayed_animation = (menu_delayed_animation_t*) malloc(sizeof(menu_delayed_animation_t));

   memcpy(&delayed_animation->entry, entry, sizeof(menu_animation_ctx_entry_t));

   timer_entry.cb = menu_delayed_animation_cb;
   timer_entry.duration = delay;
   timer_entry.userdata = delayed_animation;

   menu_timer_start(&delayed_animation->timer, &timer_entry);
}
