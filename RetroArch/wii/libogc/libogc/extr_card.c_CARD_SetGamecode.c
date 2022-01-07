
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int CARD_ERROR_READY ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* card_gamecode ;
 int memcpy (int*,char const*,int) ;
 int strlen (char const*) ;

s32 CARD_SetGamecode(const char *gamecode)
{
 u32 level,i;

 _CPU_ISR_Disable(level);
 for(i=0;i<4;i++) card_gamecode[i] = 0xff;
 if(gamecode && strlen(gamecode)<=4) memcpy(card_gamecode,gamecode,4) ;
 _CPU_ISR_Restore(level);

 return CARD_ERROR_READY;
}
