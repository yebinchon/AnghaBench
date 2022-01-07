
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ PAB_active; scalar_t__ cpu_console_buf; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_8__ {char* buf_base; char* buf_ptr; } ;
typedef TYPE_2__ console_buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int write_lock; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int _cnputs (char*,int) ;
 int console_restore_interrupts_state (scalar_t__) ;
 TYPE_6__ console_ring ;
 int console_ring_lock_init () ;
 int console_ring_put (char) ;
 scalar_t__ console_ring_space () ;
 int console_ring_try_empty () ;
 scalar_t__ console_suspended ;
 int cpu_buffer_put (TYPE_2__*,char) ;
 scalar_t__ cpu_buffer_size (TYPE_2__*) ;
 TYPE_1__* current_cpu_datap () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int simple_lock_try_lock_loop (int *) ;
 int simple_unlock (int *) ;

void
cnputc(char c)
{
 console_buf_t * cbp;
 cpu_data_t * cpu_data_p;
 boolean_t state;
 boolean_t needs_print = TRUE;
 char * cp;

restart:
 mp_disable_preemption();
 cpu_data_p = current_cpu_datap();
 cbp = (console_buf_t *)cpu_data_p->cpu_console_buf;
 if (console_suspended || cbp == ((void*)0)) {
  mp_enable_preemption();

  _cnputs(&c, 1);
  return;
 }
 state = ml_set_interrupts_enabled(FALSE);







 if (needs_print && !cpu_buffer_put(cbp, c)) {
  simple_lock_try_lock_loop(&console_ring.write_lock);

  if (cpu_buffer_size(cbp) > console_ring_space()) {
   simple_unlock(&console_ring.write_lock);
   console_restore_interrupts_state(state);
   mp_enable_preemption();

   console_ring_try_empty();
   goto restart;
  }

  for (cp = cbp->buf_base; cp < cbp->buf_ptr; cp++)
   console_ring_put(*cp);
  cbp->buf_ptr = cbp->buf_base;
  simple_unlock(&console_ring.write_lock);

  cpu_buffer_put(cbp, c);
 }

 needs_print = FALSE;

 if (c != '\n') {
  console_restore_interrupts_state(state);
  mp_enable_preemption();
  return;
 }


 simple_lock_try_lock_loop(&console_ring.write_lock);
 if (cpu_buffer_size(cbp) > console_ring_space()) {
  simple_unlock(&console_ring.write_lock);
  console_restore_interrupts_state(state);
  mp_enable_preemption();

  console_ring_try_empty();

  goto restart;
 }

 for (cp = cbp->buf_base; cp < cbp->buf_ptr; cp++)
  console_ring_put(*cp);

 cbp->buf_ptr = cbp->buf_base;
 simple_unlock(&console_ring.write_lock);

 console_restore_interrupts_state(state);
 mp_enable_preemption();

 console_ring_try_empty();

 return;
}
