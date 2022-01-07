
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_GETCLIPBOARDDATA ;
 int syscall (int ,char*,int) ;

void trap_GetClipboardData( char *buf, int bufsize ) {
 syscall( UI_GETCLIPBOARDDATA, buf, bufsize );
}
