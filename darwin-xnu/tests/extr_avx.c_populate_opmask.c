
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ getpid () ;
 int karray0 ;
 int store_opmask (int ) ;

__attribute__((used)) static inline void
populate_opmask(void) {
 uint64_t k[8];

 for (int j = 0; j < 8; j++)
         k[j] = ((uint64_t) getpid() << 32) + (0x11111111 * j);

 __asm__ volatile("kmovq %0, %%k0" : :"m" (k[0]));
 __asm__ volatile("kmovq %0, %%k1" : :"m" (k[1]));
 __asm__ volatile("kmovq %0, %%k2" : :"m" (k[2]));
 __asm__ volatile("kmovq %0, %%k3" : :"m" (k[3]));
 __asm__ volatile("kmovq %0, %%k4" : :"m" (k[4]));
 __asm__ volatile("kmovq %0, %%k5" : :"m" (k[5]));
 __asm__ volatile("kmovq %0, %%k6" : :"m" (k[6]));
 __asm__ volatile("kmovq %0, %%k7" : :"m" (k[7]));

 store_opmask(karray0);
}
