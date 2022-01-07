
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int READONLY () ;
 int WRITEONLY () ;
 int config_tcache ;
 int tcache_flush () ;

__attribute__((used)) static int
thread_tcache_flush_ctl(const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen)
{
 int ret;

 if (!config_tcache)
  return (ENOENT);

 READONLY();
 WRITEONLY();

 tcache_flush();

 ret = 0;
label_return:
 return (ret);
}
