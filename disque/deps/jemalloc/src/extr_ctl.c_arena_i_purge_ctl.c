
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READONLY () ;
 int WRITEONLY () ;
 int arena_purge (size_t const) ;
 int ctl_mtx ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

__attribute__((used)) static int
arena_i_purge_ctl(const size_t *mib, size_t miblen, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen)
{
 int ret;

 READONLY();
 WRITEONLY();
 malloc_mutex_lock(&ctl_mtx);
 arena_purge(mib[1]);
 malloc_mutex_unlock(&ctl_mtx);

 ret = 0;
label_return:
 return (ret);
}
