
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_PRINT ;
 int syscall (int ,char const*) ;

void trap_Printf( const char *fmt ) {
 syscall( G_PRINT, fmt );
}
