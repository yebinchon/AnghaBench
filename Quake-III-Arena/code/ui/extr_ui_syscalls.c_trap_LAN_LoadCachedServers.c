
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_LOADCACHEDSERVERS ;
 int syscall (int ) ;

void trap_LAN_LoadCachedServers() {
 syscall( UI_LAN_LOADCACHEDSERVERS );
}
