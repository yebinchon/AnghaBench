
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int paniclog_append_noflush (char*) ;

__attribute__((noreturn))
void
panic_spin_forever()
{
 paniclog_append_noflush("\nPlease go to https://panic.apple.com to report this panic\n");

 for (;;) { }
}
