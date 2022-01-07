
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_atomic_lock () ;
 int avpriv_atomic_unlock () ;

__attribute__((used)) static inline void atomic_thread_fence(int order)
{
    avpriv_atomic_lock();
    avpriv_atomic_unlock();
}
