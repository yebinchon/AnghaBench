
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KBD_THREAD_KBD_SCAN_INTERVAL ;
 int KBD_THREAD_UDELAY ;
 int USBKeyboard_IsConnected () ;
 int USBKeyboard_Scan () ;
 int _kbd_scan_for_keyboard () ;
 int _kbd_thread_quit ;
 int usleep (int ) ;

__attribute__((used)) static void * _kbd_thread_func(void *arg) {
 u32 turns = 0;

 while (!_kbd_thread_quit) {

  if ((turns % KBD_THREAD_KBD_SCAN_INTERVAL) == 0) {
   if (!USBKeyboard_IsConnected())
    _kbd_scan_for_keyboard();

   turns = 0;
  }
  turns++;

  USBKeyboard_Scan();
  usleep(KBD_THREAD_UDELAY);
 }

 return ((void*)0);
}
