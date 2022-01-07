
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_t ;


 int ordered_store_hw (int ,int ) ;

void
hw_lock_init(hw_lock_t lock)
{
 ordered_store_hw(lock, 0);
}
