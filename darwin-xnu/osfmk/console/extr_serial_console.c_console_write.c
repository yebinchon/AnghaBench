
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int len; int write_lock; } ;


 int CPU_CONS_BUF_SIZE ;
 int FALSE ;
 int console_init () ;
 int console_restore_interrupts_state (int ) ;
 TYPE_1__ console_ring ;
 int console_ring_put (char) ;
 int console_ring_space () ;
 int console_ring_try_empty () ;
 int ml_set_interrupts_enabled (int ) ;
 int simple_lock_try_lock_loop (int *) ;
 int simple_unlock (int *) ;

void
console_write(char * str, int size)
{
 console_init();
 int chunk_size = size;
 int i = 0;

 if (size > console_ring.len)
  chunk_size = CPU_CONS_BUF_SIZE;

 while (size > 0) {
  boolean_t state = ml_set_interrupts_enabled(FALSE);

  simple_lock_try_lock_loop(&console_ring.write_lock);
  while (chunk_size > console_ring_space()) {
   simple_unlock(&console_ring.write_lock);
   console_restore_interrupts_state(state);

   console_ring_try_empty();

   state = ml_set_interrupts_enabled(FALSE);
   simple_lock_try_lock_loop(&console_ring.write_lock);
  }

  for (i = 0; i < chunk_size; i++)
   console_ring_put(str[i]);

  str = &str[i];
  size -= chunk_size;
  simple_unlock(&console_ring.write_lock);
  console_restore_interrupts_state(state);
 }

 console_ring_try_empty();
}
