
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; } ;
typedef TYPE_1__ robj ;



robj *resetRefCount(robj *obj) {
    obj->refcount = 0;
    return obj;
}
