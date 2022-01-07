
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__* cothread_t ;


 int CO_SWAP_ASM (scalar_t__*,scalar_t__*) ;
 uintptr_t above_stack ;
 scalar_t__ co_active () ;
 scalar_t__* co_create_ (unsigned int,uintptr_t) ;
 uintptr_t stack_align ;
 scalar_t__ state_size ;

cothread_t co_create( unsigned int size, void (*entry_)( void ) )
{
 uintptr_t entry = (uintptr_t) entry_;
 uint32_t* t = ((void*)0);


 if ( co_active() )
 {
  size += state_size + above_stack + stack_align;
  t = co_create_( size, entry );
 }

 if ( t )
 {
  uintptr_t sp;
  int shift;



  CO_SWAP_ASM( t, t );







  sp = (uintptr_t) t + size - above_stack;
  sp -= sp % stack_align;
   shift = 0;



  t [8] = (uint32_t) (entry >> shift >> shift);
  t [9] = (uint32_t) entry;

  t [10] = (uint32_t) (sp >> shift >> shift);
  t [11] = (uint32_t) sp;
 }

 return t;
}
