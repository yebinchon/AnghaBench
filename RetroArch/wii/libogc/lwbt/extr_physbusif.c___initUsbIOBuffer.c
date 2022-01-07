
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct memb_blks {int size; int num; int * mem; } ;
typedef int s32 ;


 int MEM_ALIGN_SIZE (int) ;
 scalar_t__ ROUNDDOWN32 (int) ;
 int SYS_GetArena2Hi () ;
 int SYS_GetArena2Lo () ;
 int SYS_SetArena2Hi (int *) ;
 int btmemb_init (struct memb_blks*) ;

__attribute__((used)) static s32 __initUsbIOBuffer(struct memb_blks *blk,u32 buf_size,u32 num_bufs)
{
 u32 len;
 u8 *ptr = ((void*)0);

 len = ((MEM_ALIGN_SIZE(buf_size)+sizeof(u32))*num_bufs);
 ptr = (u8*)ROUNDDOWN32(((u32)SYS_GetArena2Hi() - len));
 if((u32)ptr<(u32)SYS_GetArena2Lo()) return -4;

 SYS_SetArena2Hi(ptr);

 blk->size = buf_size;
 blk->num = num_bufs;
 blk->mem = ptr;

 btmemb_init(blk);
 return 0;
}
