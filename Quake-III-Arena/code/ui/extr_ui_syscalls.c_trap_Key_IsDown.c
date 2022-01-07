
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_KEY_ISDOWN ;
 int syscall (int ,int) ;

qboolean trap_Key_IsDown( int keynum ) {
 return syscall( UI_KEY_ISDOWN, keynum );
}
