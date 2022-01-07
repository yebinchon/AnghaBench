
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int T_ASSERT_EQ (int,int,char*,int ,int) ;
 int get_pri (int ) ;
 int mach_thread_self () ;
 int pthread_threadid_np (int *,int *) ;
 int sleep (int) ;
 int turnstile_prim_lock (int) ;

__attribute__((used)) static void *
take_lock_and_exit(void * arg)
{
 int old_pri = get_pri(mach_thread_self());
 int unboosted_pri;
 int boosted_pri;
 uint64_t tid;
 int type = (int)arg;

 pthread_threadid_np(((void*)0), &tid);

 T_ASSERT_EQ(old_pri, 37, "thread(%llu) priority before acquiring the lock is %d\n", tid, old_pri);


 turnstile_prim_lock(type);

 unboosted_pri = get_pri(mach_thread_self());
 T_ASSERT_EQ(unboosted_pri, 37, "thread(%llu) priority after acquiring the lock (uncontended) is %d\n", tid, unboosted_pri);

 sleep(8);


 boosted_pri = get_pri(mach_thread_self());
 T_ASSERT_EQ(boosted_pri, 47, "thread(%llu) priority after contention by 47 thread is %d\n", tid, boosted_pri);


 return ((void*)0);
}
