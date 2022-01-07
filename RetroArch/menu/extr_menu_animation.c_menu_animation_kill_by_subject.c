
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tween {float* subject; int deleted; } ;
struct TYPE_4__ {unsigned int count; scalar_t__ data; } ;
typedef TYPE_1__ menu_animation_ctx_subject_t ;
struct TYPE_5__ {int pending_deletes; int list; scalar_t__ in_update; } ;


 TYPE_3__ anim ;
 unsigned int da_count (int ) ;
 int da_delete (int ,unsigned int) ;
 struct tween* da_getptr (int ,unsigned int) ;

void menu_animation_kill_by_subject(menu_animation_ctx_subject_t *subject)
{
   unsigned i, j, killed = 0;
   float **sub = (float**)subject->data;

   for (i = 0; i < da_count(anim.list) && killed < subject->count; ++i)
   {
      struct tween *t = da_getptr(anim.list, i);
      if (!t)
         continue;

      for (j = 0; j < subject->count; ++j)
      {
         if (t->subject != sub[j])
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

         killed++;
         break;
      }
   }
}
