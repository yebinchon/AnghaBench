
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int dvddiskid ;
struct TYPE_4__ {int cmd; int cb; scalar_t__ txdsize; scalar_t__ offset; int len; int * buf; } ;
typedef TYPE_1__ dvdcmdblk ;
typedef int dvdcbcallback ;


 int DVD_DISKIDSIZE ;
 int __issuecommand (int,TYPE_1__*) ;

s32 DVD_ReadDiskID(dvdcmdblk *block,dvddiskid *id,dvdcbcallback cb)
{
 if(!block || !id) return 0;

 block->cmd = 0x0005;
 block->buf = id;
 block->len = DVD_DISKIDSIZE;
 block->offset = 0;
 block->txdsize = 0;
 block->cb = cb;

 return __issuecommand(2,block);
}
