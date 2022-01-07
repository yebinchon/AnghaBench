
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int (* SetGPR ) (int *,int,int ) ;int (* SetPC ) (int *,int ) ;scalar_t__ (* GetVBR ) (int *) ;} ;
typedef int SH2_struct ;


 int MappedMemoryReadLong (scalar_t__) ;
 TYPE_1__* SH2Core ;
 scalar_t__ stub1 (int *) ;
 int stub2 (int *,int ) ;
 int stub3 (int *,int,int ) ;

void SH2PowerOn(SH2_struct *context) {
   u32 VBR = SH2Core->GetVBR(context);
   SH2Core->SetPC(context, MappedMemoryReadLong(VBR));
   SH2Core->SetGPR(context, 15, MappedMemoryReadLong(VBR+4));
}
