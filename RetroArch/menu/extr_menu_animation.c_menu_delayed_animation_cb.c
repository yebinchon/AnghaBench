
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
typedef TYPE_1__ menu_delayed_animation_t ;


 int free (TYPE_1__*) ;
 int menu_animation_push (int *) ;

__attribute__((used)) static void menu_delayed_animation_cb(void *userdata)
{
   menu_delayed_animation_t *delayed_animation = (menu_delayed_animation_t*) userdata;

   menu_animation_push(&delayed_animation->entry);

   free(delayed_animation);
}
