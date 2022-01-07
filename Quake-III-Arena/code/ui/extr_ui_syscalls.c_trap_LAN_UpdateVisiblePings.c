
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_LAN_UPDATEVISIBLEPINGS ;
 int syscall (int ,int) ;

qboolean trap_LAN_UpdateVisiblePings( int source ) {
 return syscall( UI_LAN_UPDATEVISIBLEPINGS, source );
}
