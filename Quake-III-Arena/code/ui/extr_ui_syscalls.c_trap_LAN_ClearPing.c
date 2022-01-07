
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_CLEARPING ;
 int syscall (int ,int) ;

void trap_LAN_ClearPing( int n ) {
 syscall( UI_LAN_CLEARPING, n );
}
