
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_lock_lock (int *) ;
 int hw_lock_unlock (int *) ;
 int lt_hw_lock ;
 int lt_num_holders ;

__attribute__((used)) static void
lt_note_blocking_lock_release()
{
 hw_lock_lock(&lt_hw_lock);
 lt_num_holders--;
 hw_lock_unlock(&lt_hw_lock);
}
