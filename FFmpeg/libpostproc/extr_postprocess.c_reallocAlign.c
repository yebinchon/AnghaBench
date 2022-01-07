
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (void*) ;
 void* av_mallocz (int) ;

__attribute__((used)) static void reallocAlign(void **p, int size){
    av_free(*p);
    *p= av_mallocz(size);
}
