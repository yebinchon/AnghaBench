
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,size_t) ;
 void* xmalloc (size_t) ;

void *memdup(void *src, size_t size) {
    void *dest = xmalloc(size);
    memcpy(dest, src, size);
    return dest;
}
