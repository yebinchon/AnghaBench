
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_bit_t ;


 int LOCK_PANIC_TIMEOUT ;
 scalar_t__ hw_lock_bit_to (int *,unsigned int,int ) ;
 int panic (char*,int *) ;

void
hw_lock_bit(hw_lock_bit_t *lock, unsigned int bit)
{
 if (hw_lock_bit_to(lock, bit, LOCK_PANIC_TIMEOUT))
  return;



 panic("hw_lock_bit(): interlock held (%p)", lock);

}
