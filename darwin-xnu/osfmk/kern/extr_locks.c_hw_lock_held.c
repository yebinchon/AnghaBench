
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_t ;


 scalar_t__ ordered_load_hw (int ) ;

unsigned int
hw_lock_held(hw_lock_t lock)
{
 return (ordered_load_hw(lock) != 0);
}
