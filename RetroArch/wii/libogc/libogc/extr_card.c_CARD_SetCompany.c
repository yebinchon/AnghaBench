
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int CARD_ERROR_READY ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* card_company ;
 int memcpy (int*,char const*,int) ;
 int strlen (char const*) ;

s32 CARD_SetCompany(const char *company)
{
 u32 level,i;

 _CPU_ISR_Disable(level);
 for(i=0;i<2;i++) card_company[i] = 0xff;
 if(company && strlen(company)<=2) memcpy(card_company,company,2) ;
 _CPU_ISR_Restore(level);

 return CARD_ERROR_READY;
}
