
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ compareStringObjects (TYPE_1__*,TYPE_1__*) ;

int equalStringObjects(robj *a, robj *b) {
    if (a->encoding == OBJ_ENCODING_INT &&
        b->encoding == OBJ_ENCODING_INT){


        return a->ptr == b->ptr;
    } else {
        return compareStringObjects(a,b) == 0;
    }
}
