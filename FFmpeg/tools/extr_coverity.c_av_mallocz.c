
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __coverity_alloc__ (size_t) ;
 int __coverity_mark_as_afm_allocated__ (void*,char*) ;
 int __coverity_negative_sink__ (size_t) ;
 int __coverity_writeall0__ (void*) ;

void *av_mallocz(size_t size) {
    int has_memory;
    __coverity_negative_sink__(size);
    if (has_memory) {
        void *ptr = __coverity_alloc__(size);
        __coverity_writeall0__(ptr);
        __coverity_mark_as_afm_allocated__(ptr, "av_free");
        return ptr;
    } else {
        return 0;
    }
}
