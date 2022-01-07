
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int cmd; int cb; int offset; int len; int buf; } ;


 int DVD_LowSeek (int ,int ) ;
 int __Read (int ,int ,int ,int ) ;
 TYPE_1__* __dvd_cmdlist ;
 size_t __dvd_nextcmdnum ;

__attribute__((used)) static u32 __ProcessNextCmd()
{
 u32 cmd_num = __dvd_nextcmdnum;
 if(__dvd_cmdlist[cmd_num].cmd==0x0001) {
  __dvd_nextcmdnum++;
  __Read(__dvd_cmdlist[cmd_num].buf,__dvd_cmdlist[cmd_num].len,__dvd_cmdlist[cmd_num].offset,__dvd_cmdlist[cmd_num].cb);
  return 1;
 }

 if(__dvd_cmdlist[cmd_num].cmd==0x0002) {
  __dvd_nextcmdnum++;
  DVD_LowSeek(__dvd_cmdlist[cmd_num].offset,__dvd_cmdlist[cmd_num].cb);
  return 1;
 }
 return 0;
}
