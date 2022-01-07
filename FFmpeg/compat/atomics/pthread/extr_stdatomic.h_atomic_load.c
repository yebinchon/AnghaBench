
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_atomic_lock () ;
 int avpriv_atomic_unlock () ;

__attribute__((used)) static inline intptr_t atomic_load(intptr_t *object)
{
    intptr_t ret;
    avpriv_atomic_lock();
    ret = *object;
    avpriv_atomic_unlock();
    return ret;
}
