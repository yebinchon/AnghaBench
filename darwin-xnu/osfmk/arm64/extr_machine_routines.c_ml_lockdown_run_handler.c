
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lockdown_done ;
 int lockdown_handler (int ) ;
 int lockdown_handler_lck ;
 int lockdown_this ;

void ml_lockdown_run_handler() {
    lck_mtx_lock(&lockdown_handler_lck);
    assert(!lockdown_done);

    lockdown_done = 1;
    if (lockdown_handler) {
        lockdown_handler(lockdown_this);
    }
    lck_mtx_unlock(&lockdown_handler_lck);
}
