
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*,char const*,int,char const*) ;
 int mach_assert ;
 int panic_plain (char*,char const*,int,char const*) ;

void __attribute__((noinline))
Assert(
 const char *file,
 int line,
 const char *expression
      )
{
 if (!mach_assert) {
  kprintf("%s:%d non-fatal Assertion: %s", file, line, expression);
  return;
 }

 panic_plain("%s:%d Assertion failed: %s", file, line, expression);
}
