
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void __clflush(void *ptr)
{
 __asm__ volatile("clflush (%0)" : : "r" (ptr));
}
