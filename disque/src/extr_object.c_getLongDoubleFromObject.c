
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ ERANGE ;
 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_STRING ;
 scalar_t__ errno ;
 scalar_t__ isnan (long double) ;
 scalar_t__ isspace (char) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int serverPanic (char*) ;
 long double strtold (scalar_t__,char**) ;

int getLongDoubleFromObject(robj *o, long double *target) {
    long double value;
    char *eptr;

    if (o == ((void*)0)) {
        value = 0;
    } else {
        serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);
        if (sdsEncodedObject(o)) {
            errno = 0;
            value = strtold(o->ptr, &eptr);
            if (isspace(((char*)o->ptr)[0]) || eptr[0] != '\0' ||
                errno == ERANGE || isnan(value))
                return C_ERR;
        } else if (o->encoding == OBJ_ENCODING_INT) {
            value = (long)o->ptr;
        } else {
            serverPanic("Unknown string encoding");
        }
    }
    *target = value;
    return C_OK;
}
