
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int card_block ;
struct TYPE_3__ {int timeout_svc; int wait_sync_queue; int result; } ;


 int CARD_ERROR_NOCARD ;
 int CARD_ERROR_READY ;
 int DSP_Init () ;
 int LWP_InitQueue (int *) ;
 int SYS_CreateAlarm (int *) ;
 int SYS_RegisterResetFunc (int *) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int card_company ;
 int card_gamecode ;
 int card_inited ;
 int card_resetinfo ;
 TYPE_1__* cardmap ;
 int memcpy (int ,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

s32 CARD_Init(const char *gamecode,const char *company)
{
 u32 i,level;

 if(card_inited) return CARD_ERROR_READY;
 if(gamecode && strlen(gamecode)<=4) memcpy(card_gamecode,gamecode,4);
 if(company && strlen(company)<=2) memcpy(card_company,company,2);

 _CPU_ISR_Disable(level);
 DSP_Init();

 memset(cardmap,0,sizeof(card_block)*2);
 for(i=0;i<2;i++) {
  cardmap[i].result = CARD_ERROR_NOCARD;
  LWP_InitQueue(&cardmap[i].wait_sync_queue);
  SYS_CreateAlarm(&cardmap[i].timeout_svc);
 }
 SYS_RegisterResetFunc(&card_resetinfo);
 card_inited = 1;
 _CPU_ISR_Restore(level);
 return CARD_ERROR_READY;
}
