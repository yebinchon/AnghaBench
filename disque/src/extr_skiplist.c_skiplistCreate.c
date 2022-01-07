
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int level; int (* compare ) (void const*,void const*) ;int * tail; TYPE_4__* header; scalar_t__ length; } ;
typedef TYPE_2__ skiplist ;
struct TYPE_8__ {int * backward; TYPE_1__* level; } ;
struct TYPE_6__ {scalar_t__ span; int * forward; } ;


 int SKIPLIST_MAXLEVEL ;
 TYPE_4__* skiplistCreateNode (int,int *) ;
 TYPE_2__* zmalloc (int) ;

skiplist *skiplistCreate(int (*compare)(const void *, const void *)) {
    int j;
    skiplist *sl;

    sl = zmalloc(sizeof(*sl));
    sl->level = 1;
    sl->length = 0;
    sl->header = skiplistCreateNode(SKIPLIST_MAXLEVEL,((void*)0));
    for (j = 0; j < SKIPLIST_MAXLEVEL; j++) {
        sl->header->level[j].forward = ((void*)0);
        sl->header->level[j].span = 0;
    }
    sl->header->backward = ((void*)0);
    sl->tail = ((void*)0);
    sl->compare = compare;
    return sl;
}
