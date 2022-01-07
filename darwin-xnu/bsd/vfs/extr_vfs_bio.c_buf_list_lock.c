
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf_mtxp ;
 int lck_mtx_lock_spin (int ) ;

void
buf_list_lock(void)
{
        lck_mtx_lock_spin(buf_mtxp);
}
