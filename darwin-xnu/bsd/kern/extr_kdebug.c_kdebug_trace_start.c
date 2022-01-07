
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kd_events ;
typedef int kd_event_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KDEBUG_ENABLE_SERIAL ;
 int KDEBUG_ENABLE_TRACE ;
 scalar_t__ KERN_SUCCESS ;
 int KTRACE_KDEBUG ;
 int TRUE ;
 int disable_wrap (int *,int *) ;
 int kd_early_done ;
 int kdbg_enable_typefilter () ;
 scalar_t__ kdbg_initialize_typefilter (int *) ;
 int kdbg_lock_init () ;
 scalar_t__ kdbg_reinit (int ) ;
 int kdbg_set_nkdbufs (unsigned int) ;
 int kdbg_set_tracing_enabled (int ,int) ;
 int kdbg_set_typefilter_string (char const*) ;
 int kdbg_thrmap_init () ;
 scalar_t__ kdebug_serial ;
 int kernel_debug_early_end () ;
 int kernel_debug_string_early (char*) ;
 int ktrace_end_single_threaded () ;
 int ktrace_kernel_configure (int ) ;
 int ktrace_start_single_threaded () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 int printf (char*,...) ;

void
kdebug_trace_start(unsigned int n_events, const char *filter_desc,
 boolean_t wrapping, boolean_t at_wake)
{
 if (!n_events) {
  kd_early_done = 1;
  return;
 }

 ktrace_start_single_threaded();

 kdbg_lock_init();

 ktrace_kernel_configure(KTRACE_KDEBUG);

 kdbg_set_nkdbufs(n_events);

 kernel_debug_string_early("start_kern_tracing");

 if (kdbg_reinit(TRUE)) {
  printf("error from kdbg_reinit, kernel tracing not started\n");
  goto out;
 }





 if (!wrapping) {
  uint32_t old1, old2;
  (void)disable_wrap(&old1, &old2);
 }

 if (filter_desc && filter_desc[0] != '\0') {
  if (kdbg_initialize_typefilter(((void*)0)) == KERN_SUCCESS) {
   kdbg_set_typefilter_string(filter_desc);
   kdbg_enable_typefilter();
  }
 }





 boolean_t s = ml_set_interrupts_enabled(FALSE);

 if (at_wake) {
  kdbg_thrmap_init();
 }

 kdbg_set_tracing_enabled(TRUE, KDEBUG_ENABLE_TRACE | (kdebug_serial ?
                          KDEBUG_ENABLE_SERIAL : 0));

 if (!at_wake) {




  kernel_debug_early_end();
 }

 ml_set_interrupts_enabled(s);

 printf("kernel tracing started with %u events\n", n_events);
out:
 ktrace_end_single_threaded();
}
