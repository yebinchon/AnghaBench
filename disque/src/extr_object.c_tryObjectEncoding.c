
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* sds ;
struct TYPE_10__ {scalar_t__ type; int refcount; scalar_t__ encoding; void* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {TYPE_1__** integers; } ;


 scalar_t__ OBJ_ENCODING_EMBSTR ;
 size_t OBJ_ENCODING_EMBSTR_SIZE_LIMIT ;
 scalar_t__ OBJ_ENCODING_INT ;
 scalar_t__ OBJ_ENCODING_RAW ;
 long OBJ_SHARED_INTEGERS ;
 scalar_t__ OBJ_STRING ;
 TYPE_1__* createEmbeddedStringObject (void*,size_t) ;
 int decrRefCount (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int sdsEncodedObject (TYPE_1__*) ;
 void* sdsRemoveFreeSpace (void*) ;
 size_t sdsavail (void*) ;
 int sdsfree (void*) ;
 size_t sdslen (void*) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 TYPE_4__ shared ;
 scalar_t__ string2l (void*,size_t,long*) ;

robj *tryObjectEncoding(robj *o) {
    long value;
    sds s = o->ptr;
    size_t len;





    serverAssertWithInfo(((void*)0),o,o->type == OBJ_STRING);




    if (!sdsEncodedObject(o)) return o;




     if (o->refcount > 1) return o;




    len = sdslen(s);
    if (len <= 21 && string2l(s,len,&value)) {




        if (value >= 0 && value < OBJ_SHARED_INTEGERS) {
            decrRefCount(o);
            incrRefCount(shared.integers[value]);
            return shared.integers[value];
        } else {
            if (o->encoding == OBJ_ENCODING_RAW) sdsfree(o->ptr);
            o->encoding = OBJ_ENCODING_INT;
            o->ptr = (void*) value;
            return o;
        }
    }





    if (len <= OBJ_ENCODING_EMBSTR_SIZE_LIMIT) {
        robj *emb;

        if (o->encoding == OBJ_ENCODING_EMBSTR) return o;
        emb = createEmbeddedStringObject(s,sdslen(s));
        decrRefCount(o);
        return emb;
    }
    if (o->encoding == OBJ_ENCODING_RAW &&
        sdsavail(s) > len/10)
    {
        o->ptr = sdsRemoveFreeSpace(o->ptr);
    }


    return o;
}
