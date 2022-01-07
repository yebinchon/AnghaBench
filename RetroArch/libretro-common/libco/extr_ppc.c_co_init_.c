
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _SC_PAGESIZE ;
 int co_active_handle ;
 int co_create_ (int ,uintptr_t) ;
 int co_switch ;
 scalar_t__ libco_ppc_code ;
 int mprotect (void*,uintptr_t,int) ;
 int state_size ;
 long sysconf (int ) ;

__attribute__((used)) static void co_init_( void )
{
   co_active_handle = co_create_( state_size, (uintptr_t) &co_switch );
}
