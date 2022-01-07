
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;
typedef int buf_t ;


 int buf_acquire_locked (int ,int,int,int) ;
 int buf_mtxp ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;

errno_t
buf_acquire(buf_t bp, int flags, int slpflag, int slptimeo) {
        errno_t error;

        lck_mtx_lock_spin(buf_mtxp);

 error = buf_acquire_locked(bp, flags, slpflag, slptimeo);

        lck_mtx_unlock(buf_mtxp);

 return (error);
}
