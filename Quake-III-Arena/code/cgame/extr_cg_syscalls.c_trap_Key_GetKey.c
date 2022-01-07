
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_KEY_GETKEY ;
 int syscall (int ,char const*) ;

int trap_Key_GetKey( const char *binding ) {
 return syscall( CG_KEY_GETKEY, binding );
}
