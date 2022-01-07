
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int hz ;
 int timeout (void (*) (void*),void*,int) ;

__attribute__((used)) static void
mcache_dispatch(void (*func)(void *), void *arg)
{
 ASSERT(func != ((void*)0));
 timeout(func, arg, hz/1000);
}
