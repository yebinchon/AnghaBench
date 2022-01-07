
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_GETPING ;
 int syscall (int ,int,char*,int,int*) ;

void trap_LAN_GetPing( int n, char *buf, int buflen, int *pingtime ) {
 syscall( UI_LAN_GETPING, n, buf, buflen, pingtime );
}
