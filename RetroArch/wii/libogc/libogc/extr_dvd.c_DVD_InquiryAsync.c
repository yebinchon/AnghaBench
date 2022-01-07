
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int dvddrvinfo ;
struct TYPE_4__ {int cmd; int len; int cb; scalar_t__ txdsize; int * buf; } ;
typedef TYPE_1__ dvdcmdblk ;
typedef int dvdcbcallback ;


 int __issuecommand (int,TYPE_1__*) ;

s32 DVD_InquiryAsync(dvdcmdblk *block,dvddrvinfo *info,dvdcbcallback cb)
{
 block->cmd = 0x000e;
 block->buf = info;
 block->len = 0x20;
 block->txdsize = 0;
 block->cb = cb;
 return __issuecommand(2,block);
}
