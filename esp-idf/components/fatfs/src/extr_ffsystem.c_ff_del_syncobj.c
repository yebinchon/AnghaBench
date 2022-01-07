
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FF_SYNC_t ;


 scalar_t__ CloseHandle (int ) ;

int ff_del_syncobj (
 FF_SYNC_t sobj
)
{

 return (int)CloseHandle(sobj);
}
