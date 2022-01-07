
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int breaknow; } ;
struct TYPE_5__ {TYPE_1__ bp; } ;
typedef TYPE_2__ SH2_struct ;



__attribute__((used)) static void SH2BreakNow(SH2_struct *context)
{
   context->bp.breaknow = 1;
}
