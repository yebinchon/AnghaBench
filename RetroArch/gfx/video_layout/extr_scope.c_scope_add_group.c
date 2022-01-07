
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int view_t ;
struct TYPE_3__ {int groups_count; int * groups; } ;
typedef TYPE_1__ scope_t ;


 int vec_size (void**,int,int) ;
 int view_init (int *,int *) ;

view_t *scope_add_group(scope_t *scope)
{
   view_t *group;

   vec_size((void**)&scope->groups, sizeof(view_t), ++scope->groups_count);

   group = &scope->groups[scope->groups_count - 1];
   view_init(group, ((void*)0));

   return group;
}
