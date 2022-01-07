
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 () ;

__attribute__((weak))
void __fini(void)
{
   extern void (*const __DTOR_LIST__)(void);
   extern void (*const __DTOR_END__)(void);

   void (*const *dtor)(void) = &__DTOR_LIST__;
   while (dtor < &__DTOR_END__) {
      (*dtor++)();
   }
}
