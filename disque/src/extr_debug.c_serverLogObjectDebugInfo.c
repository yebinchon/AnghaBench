
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {int type; int encoding; int refcount; int ptr; } ;
typedef TYPE_1__ robj ;


 int LL_WARNING ;
 scalar_t__ OBJ_STRING ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int sdscatrepr (int ,int ,int) ;
 int sdsempty () ;
 int sdsfree (int) ;
 int sdslen (int ) ;
 int serverLog (int ,char*,int) ;

void serverLogObjectDebugInfo(robj *o) {
    serverLog(LL_WARNING,"Object type: %u", o->type);
    serverLog(LL_WARNING,"Object encoding: %u", o->encoding);
    serverLog(LL_WARNING,"Object refcount: %d", o->refcount);
    if (o->type == OBJ_STRING && sdsEncodedObject(o)) {
        serverLog(LL_WARNING,"Object raw string len: %zu", sdslen(o->ptr));
        if (sdslen(o->ptr) < 4096) {
            sds repr = sdscatrepr(sdsempty(),o->ptr,sdslen(o->ptr));
            serverLog(LL_WARNING,"Object raw string content: %s", repr);
            sdsfree(repr);
        }
    }
}
