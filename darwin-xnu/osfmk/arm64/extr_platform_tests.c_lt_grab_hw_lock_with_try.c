
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hw_lock_try (int *) ;
 int hw_lock_unlock (int *) ;
 int lt_counter ;
 int lt_hw_lock ;
 int lt_spin_a_little_bit () ;

__attribute__((used)) static void
lt_grab_hw_lock_with_try()
{
 while(0 == hw_lock_try(&lt_hw_lock));
 lt_counter++;
 lt_spin_a_little_bit();
 hw_lock_unlock(&lt_hw_lock);
}
