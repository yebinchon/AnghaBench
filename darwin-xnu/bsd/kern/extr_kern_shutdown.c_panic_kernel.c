
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_PANIC_ZPRINT ;
 int panic (char*,char*) ;
 int zprint_panic_info () ;

__attribute__((used)) static void
panic_kernel(int howto, char *message)
{
 if ((howto & RB_PANIC_ZPRINT) == RB_PANIC_ZPRINT) {
  zprint_panic_info();
 }
 panic("userspace panic: %s", message);
}
