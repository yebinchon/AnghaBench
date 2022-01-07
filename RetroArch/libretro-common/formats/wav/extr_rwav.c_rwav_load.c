
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rwav_t ;
struct TYPE_4__ {scalar_t__ step; scalar_t__ j; scalar_t__ i; scalar_t__ size; int * data; int * out; } ;
typedef TYPE_1__ rwav_iterator_t ;
typedef enum rwav_state { ____Placeholder_rwav_state } rwav_state ;


 int RWAV_ITERATE_MORE ;
 int rwav_init (TYPE_1__*,int *,void const*,size_t) ;
 int rwav_iterate (TYPE_1__*) ;

enum rwav_state rwav_load(rwav_t* out, const void* buf, size_t size)
{
   enum rwav_state res;
   rwav_iterator_t iter;

   iter.out = ((void*)0);
   iter.data = ((void*)0);
   iter.size = 0;
   iter.i = 0;
   iter.j = 0;
   iter.step = 0;

   rwav_init(&iter, out, buf, size);

   do
   {
      res = rwav_iterate(&iter);
   }while (res == RWAV_ITERATE_MORE);

   return res;
}
