
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 () ;

__attribute__((weak))
void __init(void)
{
   extern void (*const __CTOR_LIST__)(void);
   extern void (*const __CTOR_END__)(void);

   void (*const *ctor)(void) = &__CTOR_LIST__;
   while (ctor < &__CTOR_END__) {
      (*ctor++)();
   }
}
