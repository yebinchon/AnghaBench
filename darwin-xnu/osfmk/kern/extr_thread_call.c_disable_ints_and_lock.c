
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;


 int splsched () ;
 int thread_call_lock_spin () ;

__attribute__((used)) static inline spl_t
disable_ints_and_lock(void)
{
 spl_t s = splsched();
 thread_call_lock_spin();

 return s;
}
