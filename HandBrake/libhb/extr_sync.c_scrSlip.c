
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* scr; } ;
typedef TYPE_2__ sync_common_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int scr_offset; } ;


 int SCR_HASH_SZ ;

__attribute__((used)) static void scrSlip( sync_common_t * common, int64_t delta )
{
    int ii;
    for (ii = 0; ii < SCR_HASH_SZ; ii++)
    {
        common->scr[ii].scr_offset += delta;
    }
}
