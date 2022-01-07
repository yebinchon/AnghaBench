
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSPCR_DSPDMA ;
 int* _dspReg ;

__attribute__((used)) static __inline__ void __ARWaitDma()
{
 while(_dspReg[5]&DSPCR_DSPDMA);
}
