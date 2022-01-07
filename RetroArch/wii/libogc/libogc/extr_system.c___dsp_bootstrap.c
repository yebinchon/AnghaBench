
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int DCFlushRange (void*,int) ;
 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int DSPCR_DSPRESET ;
 int DSPCR_HALT ;
 int DSPCR_RES ;
 void* SYS_GetArenaHi () ;
 int _SHIFTL (int,int,int) ;
 int* _dspReg ;
 void* _dsp_initcode ;
 int gettick () ;
 int memcpy (void*,void*,int) ;
 int printf (char*) ;

__attribute__((used)) static void __dsp_bootstrap()
{
 u16 status;
 u32 tick;

 memcpy(SYS_GetArenaHi()-128,(void*)0x81000000,128);
 memcpy((void*)0x81000000,_dsp_initcode,128);
 DCFlushRange((void*)0x81000000,128);

 _dspReg[9] = 67;
 _dspReg[5] = (DSPCR_DSPRESET|DSPCR_DSPINT|DSPCR_ARINT|DSPCR_AIINT|DSPCR_HALT);
 _dspReg[5] |= DSPCR_RES;
 while(_dspReg[5]&DSPCR_RES);

 _dspReg[0] = 0;
 while((_SHIFTL(_dspReg[2],16,16)|(_dspReg[3]&0xffff))&0x80000000);

 ((u32*)_dspReg)[8] = 0x01000000;
 ((u32*)_dspReg)[9] = 0;
 ((u32*)_dspReg)[10] = 32;

 status = _dspReg[5];
 while(!(status&DSPCR_ARINT)) status = _dspReg[5];
 _dspReg[5] = status;

 tick = gettick();
 while((gettick()-tick)<2194);

 ((u32*)_dspReg)[8] = 0x01000000;
 ((u32*)_dspReg)[9] = 0;
 ((u32*)_dspReg)[10] = 32;

 status = _dspReg[5];
 while(!(status&DSPCR_ARINT)) status = _dspReg[5];
 _dspReg[5] = status;

 _dspReg[5] &= ~DSPCR_DSPRESET;
 while(_dspReg[5]&0x400);

 _dspReg[5] &= ~DSPCR_HALT;
 while(!(_dspReg[2]&0x8000));
 status = _dspReg[3];

 _dspReg[5] |= DSPCR_HALT;
 _dspReg[5] = (DSPCR_DSPRESET|DSPCR_DSPINT|DSPCR_ARINT|DSPCR_AIINT|DSPCR_HALT);
 _dspReg[5] |= DSPCR_RES;
 while(_dspReg[5]&DSPCR_RES);

 memcpy((void*)0x81000000,SYS_GetArenaHi()-128,128);



}
