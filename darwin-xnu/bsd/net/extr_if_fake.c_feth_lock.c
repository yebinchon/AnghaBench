
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int feth_lck_mtx ;
 int lck_mtx_lock (int ) ;

__attribute__((used)) static inline void
feth_lock(void)
{
 lck_mtx_lock(feth_lck_mtx);
 return;
}
