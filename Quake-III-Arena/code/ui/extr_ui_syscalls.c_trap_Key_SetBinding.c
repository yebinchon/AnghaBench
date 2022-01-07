
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_KEY_SETBINDING ;
 int syscall (int ,int,char const*) ;

void trap_Key_SetBinding( int keynum, const char *binding ) {
 syscall( UI_KEY_SETBINDING, keynum, binding );
}
