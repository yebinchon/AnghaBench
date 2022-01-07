
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_GETSERVERPING ;
 int syscall (int ,int,int) ;

int trap_LAN_GetServerPing( int source, int n ) {
 return syscall( UI_LAN_GETSERVERPING, source, n );
}
