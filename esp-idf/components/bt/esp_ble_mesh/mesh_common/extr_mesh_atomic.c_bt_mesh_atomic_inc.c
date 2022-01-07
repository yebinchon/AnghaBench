
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_mesh_atomic_val_t ;
typedef int bt_mesh_atomic_t ;


 unsigned int bt_mesh_irq_lock () ;
 int bt_mesh_irq_unlock (unsigned int) ;

bt_mesh_atomic_val_t bt_mesh_atomic_inc(bt_mesh_atomic_t *target)
{
    unsigned int key;
    bt_mesh_atomic_val_t ret;

    key = bt_mesh_irq_lock();

    ret = *target;
    (*target)++;

    bt_mesh_irq_unlock(key);

    return ret;
}
