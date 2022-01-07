
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* level; } ;
typedef TYPE_3__ skiplistNode ;
struct TYPE_11__ {struct TYPE_11__* header; TYPE_1__* level; } ;
typedef TYPE_4__ skiplist ;
struct TYPE_9__ {TYPE_3__* forward; } ;
struct TYPE_8__ {TYPE_3__* forward; } ;


 int skiplistFreeNode (TYPE_3__*) ;
 int zfree (TYPE_4__*) ;

void skiplistFree(skiplist *sl) {
    skiplistNode *node = sl->header->level[0].forward, *next;

    zfree(sl->header);
    while(node) {
        next = node->level[0].forward;
        skiplistFreeNode(node);
        node = next;
    }
    zfree(sl);
}
