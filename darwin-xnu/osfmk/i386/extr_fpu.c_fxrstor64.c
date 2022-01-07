
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_fx_thread_state {int dummy; } ;



__attribute__((used)) static inline void fxrstor64(struct x86_fx_thread_state *a) {
 __asm__ __volatile__("fxrstor64 %0" :: "m" (*a));
}
