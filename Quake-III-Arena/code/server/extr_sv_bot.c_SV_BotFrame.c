
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTAI_START_FRAME ;
 int VM_Call (int ,int ,int) ;
 int bot_enable ;
 int gvm ;

void SV_BotFrame( int time ) {
 if (!bot_enable) return;

 if (!gvm) return;
 VM_Call( gvm, BOTAI_START_FRAME, time );
}
