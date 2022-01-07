
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int SISR_NORESPONSE ;
 int SI_ERROR_NO_RESPONSE ;
 int SI_ERR_BUSY ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* _siReg ;
 int* si_type ;

u32 SI_GetStatus(s32 chan)
{
 u32 level,sisr;

 _CPU_ISR_Disable(level);
 sisr = (_siReg[14]>>((3-chan)<<3));
 if(sisr&SISR_NORESPONSE && !(si_type[chan]&SI_ERR_BUSY)) si_type[chan] = SI_ERROR_NO_RESPONSE;
 _CPU_ISR_Restore(level);
 return sisr;
}
