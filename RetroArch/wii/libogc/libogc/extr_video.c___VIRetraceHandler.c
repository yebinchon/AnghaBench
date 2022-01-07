
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int s32 ;


 int LWP_ThreadBroadcast (int ) ;
 int SI_RefreshSamplingRate () ;
 scalar_t__ VIDEO_GetCurrentTvMode () ;
 scalar_t__ VI_EURGB60 ;
 int __VIGetCurrentPosition (int *,int *) ;
 int __VISetFilterEURGB60 (int) ;
 scalar_t__ __VISetRegs () ;
 int __VISetYUVSEL (scalar_t__) ;
 int* _viReg ;
 scalar_t__ flushFlag ;
 scalar_t__ oldDtvStatus ;
 scalar_t__ oldTvStatus ;
 int positionCB (int ,int ) ;
 int postRetraceCB (int ) ;
 int preRetraceCB (int ) ;
 int retraceCount ;
 int video_queue ;

__attribute__((used)) static void __VIRetraceHandler(u32 nIrq,void *pCtx)
{



 u32 ret = 0;
 u32 intr;
 s32 xpos,ypos;

 intr = _viReg[24];
 if(intr&0x8000) {
  _viReg[24] = intr&~0x8000;
  ret |= 0x01;
 }

 intr = _viReg[26];
 if(intr&0x8000) {
  _viReg[26] = intr&~0x8000;
  ret |= 0x02;
 }

 intr = _viReg[28];
 if(intr&0x8000) {
  _viReg[28] = intr&~0x8000;
  ret |= 0x04;
 }

 intr = _viReg[30];
 if(intr&0x8000) {
  _viReg[30] = intr&~0x8000;
  ret |= 0x08;
 }

 intr = _viReg[30];
 if(ret&0x04 || ret&0x08) {
  if(positionCB!=((void*)0)) {
   __VIGetCurrentPosition(&xpos,&ypos);
   positionCB(xpos,ypos);
  }
 }

 retraceCount++;
 if(preRetraceCB)
  preRetraceCB(retraceCount);

 if(flushFlag) {
  if(__VISetRegs()) {
   flushFlag = 0;
   SI_RefreshSamplingRate();
  }
 }
 if(postRetraceCB)
  postRetraceCB(retraceCount);

 LWP_ThreadBroadcast(video_queue);
}
