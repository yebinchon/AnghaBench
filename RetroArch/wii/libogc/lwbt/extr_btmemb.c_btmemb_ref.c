
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct memb_blks {int dummy; } ;


 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;

u8 btmemb_ref(struct memb_blks *blk,void *ptr)
{
 u8 ref;
 u32 *pref;
 u32 level;

 _CPU_ISR_Disable(level);
 pref = ptr-sizeof(u32);
 ref = ++(*pref);
 _CPU_ISR_Restore(level);
 return ref;
}
