
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int refcount; scalar_t__ notused; void* ptr; int encoding; } ;
typedef TYPE_1__ robj ;


 int OBJ_ENCODING_RAW ;
 TYPE_1__* zmalloc (int) ;

robj *createObject(int type, void *ptr) {
    robj *o = zmalloc(sizeof(*o));
    o->type = type;
    o->encoding = OBJ_ENCODING_RAW;
    o->ptr = ptr;
    o->refcount = 1;
    o->notused = 0;
    return o;
}
