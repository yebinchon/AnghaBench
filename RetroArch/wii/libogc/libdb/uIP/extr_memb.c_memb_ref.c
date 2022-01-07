
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct memb_blks {int dummy; } ;



u8 memb_ref(struct memb_blks *blk,void *ptr)
{
 u32 *pref = ptr-sizeof(u32);
 return ++(*pref);
}
