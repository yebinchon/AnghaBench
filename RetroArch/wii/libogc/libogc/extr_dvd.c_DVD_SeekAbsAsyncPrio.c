
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s64 ;
typedef int s32 ;
struct TYPE_4__ {int cmd; int cb; int offset; } ;
typedef TYPE_1__ dvdcmdblk ;
typedef int dvdcbcallback ;


 int __issuecommand (int ,TYPE_1__*) ;

s32 DVD_SeekAbsAsyncPrio(dvdcmdblk *block,s64 offset,dvdcbcallback cb,s32 prio)
{
 block->cmd = 0x0002;
 block->offset = offset;
 block->cb = cb;

 return __issuecommand(prio,block);
}
