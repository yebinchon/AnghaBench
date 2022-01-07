
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lck_spin_try_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int lt_counter ;
 int lt_lck_spin_t ;
 int lt_spin_a_little_bit () ;

__attribute__((used)) static void
lt_grab_spin_lock_with_try()
{
 while(0 == lck_spin_try_lock(&lt_lck_spin_t));
 lt_counter++;
 lt_spin_a_little_bit();
 lck_spin_unlock(&lt_lck_spin_t);
}
