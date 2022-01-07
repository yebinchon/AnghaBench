
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_timer_t ;
typedef uintptr_t menu_animation_ctx_tag ;


 int menu_animation_kill_by_tag (uintptr_t*) ;

void menu_timer_kill(menu_timer_t *timer)
{
   menu_animation_ctx_tag tag = (uintptr_t) timer;
   menu_animation_kill_by_tag(&tag);
}
