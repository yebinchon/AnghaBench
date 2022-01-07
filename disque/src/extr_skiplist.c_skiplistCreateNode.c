
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct skiplistLevel {int dummy; } ;
struct TYPE_4__ {void* obj; } ;
typedef TYPE_1__ skiplistNode ;


 TYPE_1__* zmalloc (int) ;

skiplistNode *skiplistCreateNode(int level, void *obj) {
    skiplistNode *zn = zmalloc(sizeof(*zn)+level*sizeof(struct skiplistLevel));
    zn->obj = obj;
    return zn;
}
