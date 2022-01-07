
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {scalar_t__ polled; int aram_start; int arqhandle; } ;
typedef TYPE_1__ ARQM_Info ;


 int ARQM_STACKENTRIES ;
 int ARQ_MRAMTOARAM ;
 int ARQ_PRIO_HI ;
 int ARQ_PostRequestAsync (int *,int,int ,int ,int,int,int,int ) ;
 scalar_t__ FALSE ;
 int ROUNDUP32 (scalar_t__) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __ARQMFreeBytes ;
 TYPE_1__* __ARQMInfo ;
 int __ARQMPollCallback ;
 int __ARQMStackLocation ;
 int* __ARQMStackPointer ;

u32 ARQM_PushData(void *buffer,s32 len)
{
 u32 rlen,level;
 ARQM_Info *ptr;

 if(((u32)buffer)&0x1f || len<=0) return 0;

 rlen = ROUNDUP32(len);
 if(__ARQMFreeBytes>=rlen && __ARQMStackLocation<(ARQM_STACKENTRIES-1)) {
  ptr = &__ARQMInfo[__ARQMStackLocation];

  _CPU_ISR_Disable(level);
  ptr->polled = FALSE;
  ptr->aram_start = __ARQMStackPointer[__ARQMStackLocation++];
  __ARQMStackPointer[__ARQMStackLocation] = ptr->aram_start+rlen;
  __ARQMFreeBytes -= rlen;

  ARQ_PostRequestAsync(&ptr->arqhandle,__ARQMStackLocation-1,ARQ_MRAMTOARAM,ARQ_PRIO_HI,ptr->aram_start,(u32)buffer,rlen,__ARQMPollCallback);
  _CPU_ISR_Restore(level);

  while(ptr->polled==FALSE);
  return (ptr->aram_start);
 }
 return 0;
}
