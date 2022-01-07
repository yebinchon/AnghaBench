
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_CVAR_INFOSTRINGBUFFER ;
 int syscall (int ,int,char*,int) ;

void trap_Cvar_InfoStringBuffer( int bit, char *buffer, int bufsize ) {
 syscall( UI_CVAR_INFOSTRINGBUFFER, bit, buffer, bufsize );
}
