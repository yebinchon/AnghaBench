
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 int serial_keyboard_poll () ;

void
serial_keyboard_start(void)
{

 serial_keyboard_poll();
 panic("serial_keyboard_start: we can't get back here\n");
}
