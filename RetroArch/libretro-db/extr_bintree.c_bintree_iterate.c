
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ bintree_t ;
typedef int bintree_iter_cb ;


 int bintree_iterate_internal (int ,int ,void*) ;

int bintree_iterate(const bintree_t *t, bintree_iter_cb cb,
      void *ctx)
{
   return bintree_iterate_internal(t->root, cb, ctx);
}
