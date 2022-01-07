
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomicGet (size_t,size_t,int *) ;
 size_t used_memory ;
 int used_memory_mutex ;
 scalar_t__ zmalloc_thread_safe ;

size_t zmalloc_used_memory(void) {
    size_t um;

    if (zmalloc_thread_safe) {
        atomicGet(used_memory,um,&used_memory_mutex);
    } else {
        um = used_memory;
    }
    return um;
}
