
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ out ;

void output_w32(u32 word)
{
  *((u32 *)out)=word;
  out+=4;
}
