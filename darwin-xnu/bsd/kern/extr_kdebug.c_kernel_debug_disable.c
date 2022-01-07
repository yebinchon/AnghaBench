
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int kdbg_set_tracing_enabled (int ,int ) ;
 scalar_t__ kdebug_enable ;

void
kernel_debug_disable(void)
{
 if (kdebug_enable) {
  kdbg_set_tracing_enabled(FALSE, 0);
 }
}
