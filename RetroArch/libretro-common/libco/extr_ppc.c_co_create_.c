
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int co_swap_asm ;
 void* libco_ppc_code ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (int *,void*,int) ;

__attribute__((used)) static uint32_t* co_create_( unsigned size, uintptr_t entry )
{
 uint32_t* t = (uint32_t*) malloc( size );

 (void) entry;
 return t;
}
