
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sdshdr8 {size_t len; size_t alloc; char* buf; int flags; } ;
struct TYPE_4__ {int refcount; scalar_t__ notused; struct sdshdr8* ptr; int encoding; int type; } ;
typedef TYPE_1__ robj ;


 int OBJ_ENCODING_EMBSTR ;
 int OBJ_STRING ;
 int SDS_TYPE_8 ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,size_t) ;
 TYPE_1__* zmalloc (int) ;

robj *createEmbeddedStringObject(const char *ptr, size_t len) {
    robj *o = zmalloc(sizeof(robj)+sizeof(struct sdshdr8)+len+1);
    struct sdshdr8 *sh = (void*)(o+1);

    o->type = OBJ_STRING;
    o->encoding = OBJ_ENCODING_EMBSTR;
    o->ptr = sh+1;
    o->refcount = 1;
    o->notused = 0;

    sh->len = len;
    sh->alloc = len;
    sh->flags = SDS_TYPE_8;
    if (ptr) {
        memcpy(sh->buf,ptr,len);
        sh->buf[len] = '\0';
    } else {
        memset(sh->buf,0,len+1);
    }
    return o;
}
