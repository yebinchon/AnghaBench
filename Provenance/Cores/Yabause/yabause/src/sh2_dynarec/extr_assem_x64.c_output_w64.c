
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ out ;

void output_w64(u64 word)
{
  *((u64 *)out)=word;
  out+=8;
}
