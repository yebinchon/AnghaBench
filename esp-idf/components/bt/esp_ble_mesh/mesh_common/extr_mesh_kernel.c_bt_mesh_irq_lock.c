
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int bm_irq_lock ;
 int osi_mutex_lock (int *,int ) ;

unsigned int bt_mesh_irq_lock(void)
{



    osi_mutex_lock(&bm_irq_lock, OSI_MUTEX_MAX_TIMEOUT);
    return 0;
}
