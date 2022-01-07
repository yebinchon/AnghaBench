
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_SET_CDKEY ;
 int syscall (int ,char*) ;

void trap_SetCDKey( char *buf ) {
 syscall( UI_SET_CDKEY, buf );
}
