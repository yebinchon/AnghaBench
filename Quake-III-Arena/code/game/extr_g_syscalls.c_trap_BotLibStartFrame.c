
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_START_FRAME ;
 int PASSFLOAT (float) ;
 int syscall (int ,int ) ;

int trap_BotLibStartFrame(float time) {
 return syscall( BOTLIB_START_FRAME, PASSFLOAT( time ) );
}
