
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;


 int ASSERT (int) ;
 int mcache_applyall (int ) ;
 int mcache_cache_reap ;
 int mcache_dispatch (int ,int *) ;
 int mcache_reap_done ;
 int mcache_reaping ;

__attribute__((used)) static void
mcache_reap_start(void *arg)
{
 UInt32 *flag = arg;

 ASSERT(flag == &mcache_reaping);

 mcache_applyall(mcache_cache_reap);
 mcache_dispatch(mcache_reap_done, flag);
}
