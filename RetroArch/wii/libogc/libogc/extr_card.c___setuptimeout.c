
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_3__ {int* cmd; int sector_size; int timeout_svc; } ;
typedef TYPE_1__ card_block ;


 int SYS_CancelAlarm (int ) ;
 int SYS_SetAlarm (int ,struct timespec*,int ,int *) ;
 int TB_NSPERMS ;
 int __timeouthandler ;

__attribute__((used)) static void __setuptimeout(card_block *card)
{
 struct timespec tb;
 SYS_CancelAlarm(card->timeout_svc);

 if(card->cmd[0]==0xf1 || card->cmd[0]==0xf4) {
  tb.tv_sec = 1*(card->sector_size/8192);
  tb.tv_nsec = 0;
  SYS_SetAlarm(card->timeout_svc,&tb,__timeouthandler,((void*)0));
 } else if(card->cmd[0]==0xf2) {
  tb.tv_sec = 0;
  tb.tv_nsec = 100*TB_NSPERMS;
  SYS_SetAlarm(card->timeout_svc,&tb,__timeouthandler,((void*)0));
 }
}
