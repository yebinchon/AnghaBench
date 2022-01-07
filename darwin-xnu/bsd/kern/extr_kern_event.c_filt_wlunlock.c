
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int kqwl_statelock; } ;


 int lck_mtx_unlock (int *) ;

__attribute__((used)) static inline void
filt_wlunlock(struct kqworkloop *kqwl)
{
 lck_mtx_unlock(&kqwl->kqwl_statelock);
}
