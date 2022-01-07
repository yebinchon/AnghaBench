
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
typedef int s32 ;
struct TYPE_4__ {int cmd; int cb; void* len; void* offset; } ;
typedef TYPE_1__ dvdcmdblk ;
typedef int dvdcbcallback ;


 int __issuecommand (int,TYPE_1__*) ;

s32 __DVDAudioBufferConfig(dvdcmdblk *block,u32 enable,u32 size,dvdcbcallback cb)
{
 if(!block) return 0;

 block->cmd = 0x000d;
 block->offset = enable;
 block->len = size;
 block->cb = cb;

 return __issuecommand(2,block);
}
