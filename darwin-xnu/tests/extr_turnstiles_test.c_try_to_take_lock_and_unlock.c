
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
 int turnstile_prim_unlock (int) ;

__attribute__((used)) static void *
try_to_take_lock_and_unlock(void *arg)
{
 uint64_t tid;
 int type = (int)arg;

 pthread_threadid_np(((void*)0), &tid);
 sleep(4);

 int old_pri = get_pri(mach_thread_self());
 T_ASSERT_EQ(old_pri, 47, "thread(%llu) priority before acquiring the lock is %d\n", tid, old_pri);


 turnstile_prim_lock(type);
 sleep (2);
 turnstile_prim_unlock(type);
 return ((void*)0);
}
