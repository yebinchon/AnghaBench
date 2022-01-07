
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int* _dspReg ;

__attribute__((used)) static __inline__ void __ARClearInterrupt()
{
 u16 cause;

 cause = _dspReg[5]&~(DSPCR_DSPINT|DSPCR_AIINT);
 _dspReg[5] = (cause|DSPCR_ARINT);
}
