
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_continue_t ;
typedef int event_t ;


 int THREAD_UNINT ;
 int _serial_getc (int ,int,int ,int) ;
 int assert_wait_deadline (int ,int ,int ) ;
 int clock_interval_to_deadline (int,int,int *) ;
 int cons_cinput (char) ;
 int panic (char*) ;
 int thread_block (int ) ;

void
serial_keyboard_poll(void)
{
 int chr;
 uint64_t next;

 while(1) {
  chr = _serial_getc(0, 1, 0, 1);
  if(chr < 0)
   break;
  cons_cinput((char)chr);
 }

 clock_interval_to_deadline(16, 1000000, &next);

 assert_wait_deadline((event_t)serial_keyboard_poll, THREAD_UNINT, next);
 thread_block((thread_continue_t)serial_keyboard_poll);
 panic("serial_keyboard_poll: Shouldn't never ever get here...\n");
}
