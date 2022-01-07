
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_lock_lock (int *) ;
 int hw_lock_unlock (int *) ;
 int lt_counter ;
 int lt_hw_lock ;
 int lt_spin_a_little_bit () ;

__attribute__((used)) static void
lt_grab_hw_lock()
{
 hw_lock_lock(&lt_hw_lock);
 lt_counter++;
 lt_spin_a_little_bit();
 hw_lock_unlock(&lt_hw_lock);
}
