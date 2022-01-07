
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct memb_blks {int num; int size; int mem; } ;


 int MEMSET (int ,int ,int) ;
 int MEM_ALIGN_SIZE (int ) ;

void btmemb_init(struct memb_blks *blk)
{
 MEMSET(blk->mem,0,(MEM_ALIGN_SIZE(blk->size)+sizeof(u32))*blk->num);
}
