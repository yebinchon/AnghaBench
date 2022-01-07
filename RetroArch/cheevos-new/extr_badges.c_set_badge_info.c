
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const** badge_id_list; int* badge_locked; } ;
typedef TYPE_1__ badges_ctx_t ;


 int set_badge_menu_texture (TYPE_1__*,int) ;

void set_badge_info (badges_ctx_t *badge_struct, int id,
      const char *badge_id, bool active)
{
   if (!badge_struct)
      return;

   badge_struct->badge_id_list[id] = badge_id;
   badge_struct->badge_locked[id] = active;
   set_badge_menu_texture(badge_struct, id);
}
