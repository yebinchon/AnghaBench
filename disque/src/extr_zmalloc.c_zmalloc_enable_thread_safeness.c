
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zmalloc_thread_safe ;

void zmalloc_enable_thread_safeness(void) {
    zmalloc_thread_safe = 1;
}
