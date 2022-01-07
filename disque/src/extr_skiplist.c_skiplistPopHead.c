
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* obj; TYPE_1__* level; } ;
typedef TYPE_2__ skiplistNode ;
struct TYPE_8__ {TYPE_2__* header; } ;
typedef TYPE_3__ skiplist ;
struct TYPE_6__ {TYPE_2__* forward; } ;


 int skiplistDelete (TYPE_3__*,void*) ;

void *skiplistPopHead(skiplist *sl) {
    skiplistNode *x = sl->header;

    x = x->level[0].forward;
    if (!x) return ((void*)0);
    void *ptr = x->obj;
    skiplistDelete(sl,ptr);
    return ptr;
}
