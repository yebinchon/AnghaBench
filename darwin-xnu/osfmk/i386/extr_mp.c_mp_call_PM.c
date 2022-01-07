
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int ml_get_interrupts_enabled () ;
 int mp_PM_func () ;

__attribute__((used)) static void
mp_call_PM(void)
{
 assert(!ml_get_interrupts_enabled());

 if (mp_PM_func != ((void*)0))
  mp_PM_func();
}
