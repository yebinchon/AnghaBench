
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* obj; } ;
typedef TYPE_1__ skiplistNode ;
struct TYPE_6__ {TYPE_1__* tail; } ;
typedef TYPE_2__ skiplist ;


 int skiplistDelete (TYPE_2__*,void*) ;

void *skiplistPopTail(skiplist *sl) {
    skiplistNode *x = sl->tail;

    if (!x) return ((void*)0);
    void *ptr = x->obj;
    skiplistDelete(sl,ptr);
    return ptr;
}
