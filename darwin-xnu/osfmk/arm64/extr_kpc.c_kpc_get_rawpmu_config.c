
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kpc_config_t ;


 int SREG_OPMAT0 ;
 int SREG_OPMAT1 ;
 int SREG_OPMSK0 ;
 int SREG_OPMSK1 ;
 int SREG_PMCR2 ;
 int SREG_PMCR3 ;
 int SREG_PMCR4 ;
 int SREG_PMMMAP ;
 int SREG_PMTRHLD2 ;
 int SREG_PMTRHLD4 ;
 int SREG_PMTRHLD6 ;
 int SREG_READ (int ) ;

int
kpc_get_rawpmu_config(kpc_config_t *configv)
{
 configv[0] = SREG_READ(SREG_PMCR2);
 configv[1] = SREG_READ(SREG_PMCR3);
 configv[2] = SREG_READ(SREG_PMCR4);
 configv[3] = SREG_READ(SREG_OPMAT0);
 configv[4] = SREG_READ(SREG_OPMAT1);
 configv[5] = SREG_READ(SREG_OPMSK0);
 configv[6] = SREG_READ(SREG_OPMSK1);






 return 0;
}
