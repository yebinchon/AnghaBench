
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ctx; int cmp; int root; } ;
typedef TYPE_1__ bintree_t ;
typedef int bintree_cmp_func ;


 int bintree_new_nil_node (int *) ;
 scalar_t__ calloc (int,int) ;

bintree_t *bintree_new(bintree_cmp_func cmp, void *ctx)
{
   bintree_t *t = (bintree_t*)calloc(1, sizeof(*t));

   if (!t)
      return ((void*)0);

   t->root = bintree_new_nil_node(((void*)0));
   t->cmp = cmp;
   t->ctx = ctx;

   return t;
}
