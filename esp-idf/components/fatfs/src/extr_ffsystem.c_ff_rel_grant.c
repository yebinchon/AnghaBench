
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FF_SYNC_t ;


 int ReleaseMutex (int ) ;

void ff_rel_grant (
 FF_SYNC_t sobj
)
{

 ReleaseMutex(sobj);
}
