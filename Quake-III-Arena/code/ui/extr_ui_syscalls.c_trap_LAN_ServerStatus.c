
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_SERVERSTATUS ;
 int syscall (int ,char const*,char*,int) ;

int trap_LAN_ServerStatus( const char *serverAddress, char *serverStatus, int maxLen ) {
 return syscall( UI_LAN_SERVERSTATUS, serverAddress, serverStatus, maxLen );
}
