
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_KEY_KEYNUMTOSTRINGBUF ;
 int syscall (int ,int,char*,int) ;

void trap_Key_KeynumToStringBuf( int keynum, char *buf, int buflen ) {
 syscall( UI_KEY_KEYNUMTOSTRINGBUF, keynum, buf, buflen );
}
