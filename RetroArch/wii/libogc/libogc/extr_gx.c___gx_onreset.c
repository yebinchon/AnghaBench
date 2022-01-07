
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ FALSE ;
 int GX_AbortFrame () ;
 int GX_Flush () ;

__attribute__((used)) static s32 __gx_onreset(s32 final)
{
 if(final==FALSE) {
  GX_Flush();
  GX_AbortFrame();
 }
 return 1;
}
