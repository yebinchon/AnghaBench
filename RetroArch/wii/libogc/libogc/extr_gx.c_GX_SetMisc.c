
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int xfFlush; int dirtyState; scalar_t__ saveDLctx; scalar_t__ xfFlushSafe; int xfFlushExp; } ;


 scalar_t__ GX_MT_DL_SAVE_CTX ;
 scalar_t__ GX_MT_XF_FLUSH ;
 int _SHIFTR (scalar_t__,int,int) ;
 TYPE_1__* __gx ;
 scalar_t__ cntlzw (scalar_t__) ;

void GX_SetMisc(u32 token,u32 value)
{
 u32 cnt;

 if(token==GX_MT_XF_FLUSH) {
  __gx->xfFlushSafe = value;
  cnt = cntlzw(__gx->xfFlushSafe);
  __gx->xfFlushExp = _SHIFTR(cnt,5,16);

  __gx->xfFlush = 1;
  if(!__gx->xfFlushSafe) return;

  __gx->dirtyState |= 0x0008;
 } else if(token==GX_MT_DL_SAVE_CTX) {
  __gx->saveDLctx = (value&0xff);
 }
 return;
}
