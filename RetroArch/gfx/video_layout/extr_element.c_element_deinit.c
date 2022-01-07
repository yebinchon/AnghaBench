
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int components_count; int * name; int * components; } ;
typedef TYPE_1__ element_t ;


 int component_deinit (int *) ;
 int free (int *) ;

void element_deinit(element_t *elem)
{
   unsigned i;

   for (i = 0; i < elem->components_count; ++i)
      component_deinit(&elem->components[i]);
   free(elem->components);

   free(elem->name);
}
