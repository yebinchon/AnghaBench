
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* backward; TYPE_1__* level; int obj; } ;
typedef TYPE_2__ skiplistNode ;
struct TYPE_9__ {int level; scalar_t__ (* compare ) (int ,void*) ;unsigned int length; TYPE_2__* tail; TYPE_2__* header; } ;
typedef TYPE_3__ skiplist ;
struct TYPE_7__ {unsigned int span; TYPE_2__* forward; } ;


 int SKIPLIST_MAXLEVEL ;
 TYPE_2__* skiplistCreateNode (int,void*) ;
 int skiplistRandomLevel () ;
 scalar_t__ stub1 (int ,void*) ;
 scalar_t__ stub2 (int ,void*) ;

skiplistNode *skiplistInsert(skiplist *sl, void *obj) {
    skiplistNode *update[SKIPLIST_MAXLEVEL], *x;
    unsigned int rank[SKIPLIST_MAXLEVEL];
    int i, level;

    x = sl->header;
    for (i = sl->level-1; i >= 0; i--) {

        rank[i] = i == (sl->level-1) ? 0 : rank[i+1];
        while (x->level[i].forward &&
               sl->compare(x->level[i].forward->obj,obj) < 0)
        {
            rank[i] += x->level[i].span;
            x = x->level[i].forward;
        }
        update[i] = x;
    }


    if (x->level[0].forward &&
        sl->compare(x->level[0].forward->obj,obj) == 0) return ((void*)0);


    level = skiplistRandomLevel();
    if (level > sl->level) {
        for (i = sl->level; i < level; i++) {
            rank[i] = 0;
            update[i] = sl->header;
            update[i]->level[i].span = sl->length;
        }
        sl->level = level;
    }
    x = skiplistCreateNode(level,obj);
    for (i = 0; i < level; i++) {
        x->level[i].forward = update[i]->level[i].forward;
        update[i]->level[i].forward = x;


        x->level[i].span = update[i]->level[i].span - (rank[0] - rank[i]);
        update[i]->level[i].span = (rank[0] - rank[i]) + 1;
    }


    for (i = level; i < sl->level; i++) {
        update[i]->level[i].span++;
    }

    x->backward = (update[0] == sl->header) ? ((void*)0) : update[0];
    if (x->level[0].forward)
        x->level[0].forward->backward = x;
    else
        sl->tail = x;
    sl->length++;
    return x;
}
