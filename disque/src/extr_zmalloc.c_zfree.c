
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREFIX_SIZE ;
 int free (void*) ;
 int update_zmalloc_stat_free (int) ;
 int zmalloc_size (void*) ;

void zfree(void *ptr) {

    void *realptr;
    size_t oldsize;


    if (ptr == ((void*)0)) return;




    realptr = (char*)ptr-PREFIX_SIZE;
    oldsize = *((size_t*)realptr);
    update_zmalloc_stat_free(oldsize+PREFIX_SIZE);
    free(realptr);

}
