
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_STRING ;
 int sdslen (scalar_t__) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 scalar_t__ string2ll (scalar_t__,int ,long long*) ;

int isObjectRepresentableAsLongLong(robj *o, long long *llval) {
    serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);
    if (o->encoding == OBJ_ENCODING_INT) {
        if (llval) *llval = (long) o->ptr;
        return C_OK;
    } else {
        return string2ll(o->ptr,sdslen(o->ptr),llval) ? C_OK : C_ERR;
    }
}
