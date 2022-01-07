
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_S_STOPBACKGROUNDTRACK ;
 int syscall (int ) ;

void trap_S_StopBackgroundTrack( void ) {
 syscall( UI_S_STOPBACKGROUNDTRACK );
}
