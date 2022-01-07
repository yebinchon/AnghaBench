
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_lock_lock (int *) ;
 int hw_lock_unlock (int *) ;
 int lt_hw_lock ;
 scalar_t__ lt_max_holders ;
 scalar_t__ lt_num_holders ;

__attribute__((used)) static void
lt_note_another_blocking_lock_holder()
{
 hw_lock_lock(&lt_hw_lock);
 lt_num_holders++;
 lt_max_holders = (lt_max_holders < lt_num_holders) ? lt_num_holders : lt_max_holders;
 hw_lock_unlock(&lt_hw_lock);
}
