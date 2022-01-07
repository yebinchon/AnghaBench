
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bm_irq_lock ;
 int osi_mutex_unlock (int *) ;

void bt_mesh_irq_unlock(unsigned int key)
{
    osi_mutex_unlock(&bm_irq_lock);
}
