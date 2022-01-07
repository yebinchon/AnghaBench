
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s8 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static s8 __pad_clampS8(s8 var,s8 org)
{
 s32 siorg = (s32)org;
 if(siorg>0) {
  siorg -= 128;
  if((s32)var<siorg) var = siorg;
 } else if(siorg<0) {
  siorg += 127;
  if(siorg<(s32)var) var = siorg;
 }
 return (var-org);
}
