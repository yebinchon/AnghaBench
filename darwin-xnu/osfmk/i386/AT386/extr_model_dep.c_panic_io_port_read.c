
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (scalar_t__) ;
 scalar_t__ panic_io_port ;

void
panic_io_port_read(void) {
 if (panic_io_port)
  (void)inb(panic_io_port);
}
