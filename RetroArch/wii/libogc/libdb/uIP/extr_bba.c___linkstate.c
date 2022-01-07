
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BBA_NWAYS ;
 int BBA_NWAYS_LS10 ;
 int BBA_NWAYS_LS100 ;
 int bba_in8 (int ) ;

__attribute__((used)) static __inline__ u32 __linkstate()
{
 u8 nways = 0;

 nways = bba_in8(BBA_NWAYS);
 if(nways&BBA_NWAYS_LS10 || nways&BBA_NWAYS_LS100) return 1;
 return 0;
}
