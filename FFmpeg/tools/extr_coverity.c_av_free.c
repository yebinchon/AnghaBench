
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __coverity_free__ (void*) ;
 int __coverity_mark_as_afm_freed__ (void*,char*) ;

void *av_free(void *ptr) {
    __coverity_free__(ptr);
    __coverity_mark_as_afm_freed__(ptr, "av_free");
}
