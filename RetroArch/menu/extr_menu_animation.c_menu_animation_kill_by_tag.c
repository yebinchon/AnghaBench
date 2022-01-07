
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tween {uintptr_t tag; int deleted; } ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_2__ {int pending_deletes; int list; scalar_t__ in_update; } ;


 TYPE_1__ anim ;
 unsigned int da_count (int ) ;
 int da_delete (int ,unsigned int) ;
 struct tween* da_getptr (int ,unsigned int) ;

bool menu_animation_kill_by_tag(menu_animation_ctx_tag *tag)
{
   unsigned i;

   if (!tag || *tag == (uintptr_t)-1)
      return 0;

   for (i = 0; i < da_count(anim.list); ++i)
   {
      struct tween *t = da_getptr(anim.list, i);
      if (!t || t->tag != *tag)
         continue;

      if (anim.in_update)
      {
         t->deleted = 1;
         anim.pending_deletes = 1;
      }
      else
      {
         da_delete(anim.list, i);
         --i;
      }
   }

   return 1;
}
