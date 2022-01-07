
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktrace_mtx ;
 int ktrace_single_threaded ;
 int lck_mtx_unlock (int ) ;

void
ktrace_unlock(void)
{
 if (!ktrace_single_threaded) {
  lck_mtx_unlock(ktrace_mtx);
 }
}
