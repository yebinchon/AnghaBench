
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEAP_TRACE_LEAKS ;
 int MALLOC_CAP_32BIT ;
 int MALLOC_CAP_8BIT ;
 void* before_free_32bit ;
 void* before_free_8bit ;
 void* heap_caps_get_free_size (int ) ;
 int heap_trace_start (int ) ;

void unity_reset_leak_checks(void)
{
    before_free_8bit = heap_caps_get_free_size(MALLOC_CAP_8BIT);
    before_free_32bit = heap_caps_get_free_size(MALLOC_CAP_32BIT);




}
