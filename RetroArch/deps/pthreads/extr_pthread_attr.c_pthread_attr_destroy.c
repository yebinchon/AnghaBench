
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_5__ {scalar_t__ valid; } ;


 int EINVAL ;
 int free (TYPE_1__*) ;
 scalar_t__ pte_is_attr (TYPE_1__**) ;

int
pthread_attr_destroy (pthread_attr_t * attr)
{
   if (pte_is_attr (attr) != 0)
      return EINVAL;




   (*attr)->valid = 0;
   free (*attr);
   *attr = ((void*)0);

   return 0;
}
