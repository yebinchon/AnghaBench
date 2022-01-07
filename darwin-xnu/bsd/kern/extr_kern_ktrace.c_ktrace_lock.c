
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktrace_mtx ;
 int ktrace_single_threaded ;
 int lck_mtx_lock (int ) ;

void
ktrace_lock(void)
{
 if (!ktrace_single_threaded) {
  lck_mtx_lock(ktrace_mtx);
 }
}
