
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_4__ {int cmd; int offset; int cb; } ;
typedef TYPE_1__ dvdcmdblk ;
typedef int dvdcbcallback ;


 int __issuecommand (int,TYPE_1__*) ;

s32 DVD_ControlDriveAsync(dvdcmdblk *block,u32 cmd,dvdcbcallback cb)
{
 block->cmd = 0x11;
 block->cb = cb;
 block->offset = cmd;
 return __issuecommand(1,block);
}
