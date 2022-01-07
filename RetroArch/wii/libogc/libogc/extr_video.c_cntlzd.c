
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int cntlzw (int) ;

__attribute__((used)) static __inline__ u32 cntlzd(u64 bit)
{
 u32 hi = (u32)(bit>>32);
 u32 lo = (u32)(bit&-1);
 u32 value = cntlzw(hi);
 if(value>=32) value += cntlzw(lo);

 return value;
}
