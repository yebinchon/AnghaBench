
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tilInfo_struct ;
struct TYPE_4__ {int maxNum; scalar_t__ num; int match; } ;
struct TYPE_5__ {TYPE_1__ trackInfLoop; } ;
typedef TYPE_2__ SH2_struct ;


 int memset (int ,int ,int) ;

void SH2TrackInfLoopClear(SH2_struct *context)
{
   memset(context->trackInfLoop.match, 0, sizeof(tilInfo_struct) * context->trackInfLoop.maxNum);
   context->trackInfLoop.num = 0;
}
