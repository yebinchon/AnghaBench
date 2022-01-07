
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcsm_unlock_hdl_sp (unsigned int,int ) ;

int vcsm_unlock_hdl( unsigned int handle )
{
   return vcsm_unlock_hdl_sp( handle, 0 );
}
