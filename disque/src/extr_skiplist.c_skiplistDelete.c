
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int obj; TYPE_1__* level; } ;
typedef TYPE_2__ skiplistNode ;
struct TYPE_11__ {int level; scalar_t__ (* compare ) (int ,void*) ;TYPE_2__* header; } ;
typedef TYPE_3__ skiplist ;
struct TYPE_9__ {TYPE_2__* forward; } ;


 int SKIPLIST_MAXLEVEL ;
 int skiplistDeleteNode (TYPE_3__*,TYPE_2__*,TYPE_2__**) ;
 int skiplistFreeNode (TYPE_2__*) ;
 scalar_t__ stub1 (int ,void*) ;
 scalar_t__ stub2 (int ,void*) ;

int skiplistDelete(skiplist *sl, void *obj) {
    skiplistNode *update[SKIPLIST_MAXLEVEL], *x;
    int i;

    x = sl->header;
    for (i = sl->level-1; i >= 0; i--) {
        while (x->level[i].forward &&
               sl->compare(x->level[i].forward->obj,obj) < 0)
        {
            x = x->level[i].forward;
        }
        update[i] = x;
    }
    x = x->level[0].forward;
    if (x && sl->compare(x->obj,obj) == 0) {
        skiplistDeleteNode(sl, x, update);
        skiplistFreeNode(x);
        return 1;
    }
    return 0;
}
