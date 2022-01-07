
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int lt_counter ;
 int lt_lck_spin_t ;
 int lt_spin_a_little_bit () ;

__attribute__((used)) static void
lt_grab_spin_lock()
{
 lck_spin_lock(&lt_lck_spin_t);
 lt_counter++;
 lt_spin_a_little_bit();
 lck_spin_unlock(&lt_lck_spin_t);
}
