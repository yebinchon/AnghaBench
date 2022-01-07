
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_STRING ;
 TYPE_1__* createStringObject (char*,int ) ;
 int incrRefCount (TYPE_1__*) ;
 int ll2string (char*,int,long) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 int serverPanic (char*) ;
 int strlen (char*) ;

robj *getDecodedObject(robj *o) {
    robj *dec;

    if (sdsEncodedObject(o)) {
        incrRefCount(o);
        return o;
    }
    if (o->type == OBJ_STRING && o->encoding == OBJ_ENCODING_INT) {
        char buf[32];

        ll2string(buf,32,(long)o->ptr);
        dec = createStringObject(buf,strlen(buf));
        return dec;
    } else {
        serverPanic("Unknown encoding type");
    }
}
