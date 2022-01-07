
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_SENDCLIENTCOMMAND ;
 int syscall (int ,char const*) ;

void trap_SendClientCommand( const char *s ) {
 syscall( CG_SENDCLIENTCOMMAND, s );
}
