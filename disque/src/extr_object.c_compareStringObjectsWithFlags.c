
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; char* ptr; } ;
typedef TYPE_1__ robj ;
typedef int bufb ;
typedef int bufa ;


 int DISQUE_COMPARE_COLL ;
 scalar_t__ OBJ_STRING ;
 size_t ll2string (char*,int,long) ;
 int memcmp (char*,char*,size_t) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 size_t sdslen (char*) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int strcoll (char*,char*) ;

int compareStringObjectsWithFlags(robj *a, robj *b, int flags) {
    serverAssertWithInfo(((void*)0),a,a->type == OBJ_STRING && b->type == OBJ_STRING);
    char bufa[128], bufb[128], *astr, *bstr;
    size_t alen, blen, minlen;

    if (a == b) return 0;
    if (sdsEncodedObject(a)) {
        astr = a->ptr;
        alen = sdslen(astr);
    } else {
        alen = ll2string(bufa,sizeof(bufa),(long) a->ptr);
        astr = bufa;
    }
    if (sdsEncodedObject(b)) {
        bstr = b->ptr;
        blen = sdslen(bstr);
    } else {
        blen = ll2string(bufb,sizeof(bufb),(long) b->ptr);
        bstr = bufb;
    }
    if (flags & DISQUE_COMPARE_COLL) {
        return strcoll(astr,bstr);
    } else {
        int cmp;

        minlen = (alen < blen) ? alen : blen;
        cmp = memcmp(astr,bstr,minlen);
        if (cmp == 0) return alen-blen;
        return cmp;
    }
}
