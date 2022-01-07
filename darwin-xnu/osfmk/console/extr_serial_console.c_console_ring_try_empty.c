
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int used; int buffer; int len; int read_ptr; int read_lock; int write_lock; } ;


 scalar_t__ FALSE ;
 int MAX_INT_DISABLED_FLUSH_SIZE ;
 int MAX_TOTAL_FLUSH_SIZE ;
 int MIN (int,int ) ;
 int _cnputs (int,int) ;
 int console_output ;
 int console_restore_interrupts_state (int) ;
 TYPE_1__ console_ring ;
 int console_suspended ;
 int delay (int) ;
 int handle_pending_TLB_flushes () ;
 int hw_atomic_add (int *,int) ;
 int hw_atomic_sub (int *,int) ;
 int kernel_debugger_entry_count ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int ml_set_interrupts_enabled (scalar_t__) ;
 int simple_lock_try (int *) ;
 int simple_lock_try_lock_loop (int *) ;
 int simple_unlock (int *) ;

__attribute__((used)) static void
console_ring_try_empty(void)
{

 boolean_t handle_tlb_flushes = (ml_get_interrupts_enabled() == FALSE);


 int nchars_out = 0;
 int total_chars_out = 0;
 int size_before_wrap = 0;

 do {

  if (handle_tlb_flushes)
   handle_pending_TLB_flushes();






  if (!simple_lock_try(&console_ring.read_lock)) {







   delay(1);
   return;
  }

  boolean_t state = ml_set_interrupts_enabled(FALSE);


  (void)hw_atomic_add(&console_output, 1);

  simple_lock_try_lock_loop(&console_ring.write_lock);


  nchars_out = MIN(console_ring.used, MAX_INT_DISABLED_FLUSH_SIZE);


  size_before_wrap = (int)((console_ring.buffer + console_ring.len) - console_ring.read_ptr);
  if (nchars_out > size_before_wrap)
   nchars_out = size_before_wrap;

  if (nchars_out > 0) {
   _cnputs(console_ring.read_ptr, nchars_out);
   console_ring.read_ptr =
       console_ring.buffer + ((console_ring.read_ptr - console_ring.buffer + nchars_out) % console_ring.len);
   console_ring.used -= nchars_out;
   total_chars_out += nchars_out;
  }

  simple_unlock(&console_ring.write_lock);

  (void)hw_atomic_sub(&console_output, 1);

  simple_unlock(&console_ring.read_lock);

  console_restore_interrupts_state(state);






  if (!kernel_debugger_entry_count && !console_suspended && (total_chars_out >= MAX_TOTAL_FLUSH_SIZE))
   break;

 } while (nchars_out > 0);
}
