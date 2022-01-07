
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* ptr; int encoding; } ;
typedef TYPE_1__ robj ;
struct TYPE_7__ {TYPE_1__** integers; } ;


 long long LONG_MAX ;
 long long LONG_MIN ;
 int OBJ_ENCODING_INT ;
 long long OBJ_SHARED_INTEGERS ;
 int OBJ_STRING ;
 TYPE_1__* createObject (int ,int *) ;
 int incrRefCount (TYPE_1__*) ;
 int * sdsfromlonglong (long long) ;
 TYPE_2__ shared ;

robj *createStringObjectFromLongLong(long long value) {
    robj *o;
    if (value >= 0 && value < OBJ_SHARED_INTEGERS) {
        incrRefCount(shared.integers[value]);
        o = shared.integers[value];
    } else {
        if (value >= LONG_MIN && value <= LONG_MAX) {
            o = createObject(OBJ_STRING, ((void*)0));
            o->encoding = OBJ_ENCODING_INT;
            o->ptr = (void*)((long)value);
        } else {
            o = createObject(OBJ_STRING,sdsfromlonglong(value));
        }
    }
    return o;
}
