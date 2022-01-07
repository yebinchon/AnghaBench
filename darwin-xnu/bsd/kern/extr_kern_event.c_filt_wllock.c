
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int kqwl_statelock; } ;


 int lck_mtx_lock (int *) ;

__attribute__((used)) static inline void
filt_wllock(struct kqworkloop *kqwl)
{
 lck_mtx_lock(&kqwl->kqwl_statelock);
}
