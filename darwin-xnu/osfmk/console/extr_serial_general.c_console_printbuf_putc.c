
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_printbuf_state {int total; int pos; int* str; int flags; } ;


 int CONS_PB_WRITE_NEWLINE ;
 int SERIALMODE_SYNCDRAIN ;
 int SERIAL_CONS_BUF_SIZE ;
 int console_write (char*,size_t) ;
 int serialmode ;

void
console_printbuf_putc(int ch, void * arg)
{
 struct console_printbuf_state * info = (struct console_printbuf_state *)arg;
 info->total += 1;
 if (info->pos < (SERIAL_CONS_BUF_SIZE - 1)) {
  info->str[info->pos] = ch;
  info->pos += 1;
 } else {





  if (serialmode & SERIALMODE_SYNCDRAIN) {
   info->str[info->pos] = '\0';
   console_write(info->str, info->pos);
   info->pos = 0;
   info->str[info->pos] = ch;
   info->pos += 1;
  }
 }

 info->str[info->pos] = '\0';

 if (ch == '\n' && info->flags & CONS_PB_WRITE_NEWLINE) {
  console_write(info->str, info->pos);
  info->pos = 0;
  info->str[info->pos] = '\0';
 }
}
