
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elements_count; int * elements; } ;
typedef TYPE_1__ scope_t ;
typedef int element_t ;


 int element_init (int *,int *,int ) ;
 int vec_size (void**,int,int) ;

element_t *scope_add_element(scope_t *scope)
{
   element_t *elem;

   vec_size((void**)&scope->elements, sizeof(element_t), ++scope->elements_count);

   elem = &scope->elements[scope->elements_count - 1];
   element_init(elem, ((void*)0), 0);

   return elem;
}
