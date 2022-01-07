
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CleanPoC_DcacheRegion_Force (scalar_t__,int ) ;
 scalar_t__ gPanicBase ;
 int gPanicSize ;

void
PE_sync_panic_buffers(void)
{
 if (gPanicBase)
  CleanPoC_DcacheRegion_Force(gPanicBase, gPanicSize);
}
