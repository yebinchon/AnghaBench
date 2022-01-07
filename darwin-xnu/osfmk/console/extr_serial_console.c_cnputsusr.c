
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int _cnputs (char*,int) ;
 scalar_t__ console_output ;
 int console_restore_interrupts_state (int ) ;
 int console_write (char*,int) ;
 int delay (int) ;
 int ml_set_interrupts_enabled (int ) ;

void
cnputsusr(char *s, int size)
{

 if (size > 1) {
  console_write(s, size);
  return;
 }

 boolean_t state;
 while (console_output != 0) {
  delay(1);
 }






 state = ml_set_interrupts_enabled(FALSE);
 _cnputs(s, 1);
 console_restore_interrupts_state(state);
}
