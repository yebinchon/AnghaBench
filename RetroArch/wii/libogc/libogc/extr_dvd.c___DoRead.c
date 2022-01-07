
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int s64 ;
typedef int dvdcallbacklow ;
struct TYPE_2__ {int cmd; } ;


 int __Read (void*,int ,int ,int ) ;
 TYPE_1__* __dvd_cmdlist ;
 scalar_t__ __dvd_nextcmdnum ;

__attribute__((used)) static void __DoRead(void *buffer,u32 len,s64 offset,dvdcallbacklow cb)
{
 __dvd_nextcmdnum = 0;
 __dvd_cmdlist[0].cmd = -1;
 __Read(buffer,len,offset,cb);
}
