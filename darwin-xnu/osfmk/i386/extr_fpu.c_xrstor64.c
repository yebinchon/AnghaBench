
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86_fx_thread_state {int dummy; } ;



__attribute__((used)) static inline void xrstor64(struct x86_fx_thread_state *a, uint32_t rfbm) {
 __asm__ __volatile__("xrstor64 %0" :: "m" (*a), "a"(rfbm), "d"(0));
}
