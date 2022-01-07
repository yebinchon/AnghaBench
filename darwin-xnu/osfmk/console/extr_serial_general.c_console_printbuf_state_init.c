
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_printbuf_state {int flags; } ;


 int CONS_PB_CANBLOCK ;
 int CONS_PB_WRITE_NEWLINE ;
 int bzero (struct console_printbuf_state*,int) ;

void
console_printbuf_state_init(struct console_printbuf_state * data, int write_on_newline, int can_block)
{
 if (data == ((void*)0))
  return;
 bzero(data, sizeof(struct console_printbuf_state));
 if (write_on_newline)
  data->flags |= CONS_PB_WRITE_NEWLINE;
 if (can_block)
  data->flags |= CONS_PB_CANBLOCK;
}
