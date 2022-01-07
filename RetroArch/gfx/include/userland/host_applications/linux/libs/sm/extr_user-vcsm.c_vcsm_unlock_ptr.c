
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcsm_unlock_ptr_sp (void*,int ) ;

int vcsm_unlock_ptr( void *usr_ptr )
{
   return vcsm_unlock_ptr_sp( usr_ptr, 0 );
}
