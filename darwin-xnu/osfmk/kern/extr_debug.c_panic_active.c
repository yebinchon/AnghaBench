
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* debugger_panic_str ;

unsigned
panic_active(void) {
 return ((debugger_panic_str != (char *) 0));
}
