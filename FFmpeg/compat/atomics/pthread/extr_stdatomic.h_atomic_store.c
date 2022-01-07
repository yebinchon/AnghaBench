
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_atomic_lock () ;
 int avpriv_atomic_unlock () ;

__attribute__((used)) static inline void atomic_store(intptr_t *object, intptr_t desired)
{
    avpriv_atomic_lock();
    *object = desired;
    avpriv_atomic_unlock();
}
