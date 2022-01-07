
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;


 int splx (int ) ;
 int thread_call_unlock () ;

__attribute__((used)) static inline void
enable_ints_and_unlock(spl_t s)
{
 thread_call_unlock();
 splx(s);
}
