
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int DAIF_IRQF ;
 int FALSE ;
 int MRS (int,char*) ;
 int TRUE ;

boolean_t ml_get_interrupts_enabled(void)
{
 uint64_t value;

 MRS(value, "DAIF");
 if (value & DAIF_IRQF)
  return FALSE;
 return TRUE;
}
