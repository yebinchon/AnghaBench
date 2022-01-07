
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int in_val ;


 int T_LOG (char*,int ,...) ;
 int pthread_threadid_np (int *,int *) ;
 int sysctlbyname (char*,int *,int ,int*,int) ;

__attribute__((used)) static void
turnstile_prim_unlock(int type)
{
 int ret;
 uint64_t tid;
 int in_val = type;
 pthread_threadid_np(((void*)0), &tid);
 T_LOG("sysctlbyname unlock called from thread %llu \n", tid);
 ret = sysctlbyname("kern.turnstiles_test_unlock", ((void*)0), 0, &in_val, sizeof(in_val));
 T_LOG("sysctlbyname unlock returned from thread %llu with value %d \n", tid, ret);
}
