
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_SET_PBCLSTATUS ;
 int syscall (int ,int) ;

void trap_SetPbClStatus( int status ) {
 syscall( UI_SET_PBCLSTATUS, status );
}
