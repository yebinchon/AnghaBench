
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_S_STARTBACKGROUNDTRACK ;
 int syscall (int ,char const*,char const*) ;

void trap_S_StartBackgroundTrack( const char *intro, const char *loop ) {
 syscall( CG_S_STARTBACKGROUNDTRACK, intro, loop );
}
