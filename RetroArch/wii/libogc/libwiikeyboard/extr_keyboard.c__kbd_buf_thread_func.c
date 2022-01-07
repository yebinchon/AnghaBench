
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int symbol; } ;
typedef TYPE_1__ keyboard_event ;
struct TYPE_5__ {int tail; int head; int * buf; } ;


 int KBD_THREAD_UDELAY ;
 scalar_t__ KEYBOARD_GetEvent (TYPE_1__*) ;
 scalar_t__ KEYBOARD_PRESSED ;
 int _kbd_thread_quit ;
 TYPE_2__ _keyBuffer ;
 int usleep (int ) ;

__attribute__((used)) static void * _kbd_buf_thread_func(void *arg) {
 keyboard_event event;
 while (!_kbd_thread_quit) {
  if (((_keyBuffer.tail+1)&255) != _keyBuffer.head) {
   if ( KEYBOARD_GetEvent(&event)) {
    if (event.type == KEYBOARD_PRESSED) {
     _keyBuffer.buf[_keyBuffer.tail] = event.symbol;
     _keyBuffer.tail++;
    }
   }
  }
  usleep(KBD_THREAD_UDELAY);
 }
 return ((void*)0);
}
