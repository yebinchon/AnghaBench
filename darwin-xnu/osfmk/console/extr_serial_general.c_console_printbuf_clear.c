
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_printbuf_state {size_t pos; char* str; scalar_t__ total; } ;


 int console_write (char*,size_t) ;

void
console_printbuf_clear(struct console_printbuf_state * info) {
 if (info->pos != 0) {
  console_write(info->str, info->pos);
 }
 info->pos = 0;
 info->str[info->pos] = '\0';
 info->total = 0;
}
