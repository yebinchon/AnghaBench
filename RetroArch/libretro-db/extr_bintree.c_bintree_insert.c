
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ bintree_t ;


 int bintree_insert_internal (TYPE_1__*,int ,void*) ;

int bintree_insert(bintree_t *t, void *value)
{
   return bintree_insert_internal(t, t->root, value);
}
