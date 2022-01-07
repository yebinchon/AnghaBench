
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfxHandle_t ;


 int CG_S_STARTLOCALSOUND ;
 int syscall (int ,int ,int) ;

void trap_S_StartLocalSound( sfxHandle_t sfx, int channelNum ) {
 syscall( CG_S_STARTLOCALSOUND, sfx, channelNum );
}
