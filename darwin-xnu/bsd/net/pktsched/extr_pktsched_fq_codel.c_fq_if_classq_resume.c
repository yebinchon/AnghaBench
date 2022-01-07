
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fqs_throttle; } ;
typedef TYPE_2__ fq_if_t ;
struct TYPE_7__ {int fcl_throttle_off; } ;
struct TYPE_9__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_3__ fq_if_classq_t ;


 int FQ_IF_CLASSQ_IDLE (TYPE_3__*) ;
 int VERIFY (int ) ;

__attribute__((used)) static void
fq_if_classq_resume(fq_if_t *fqs, fq_if_classq_t *fq_cl)
{
 VERIFY(FQ_IF_CLASSQ_IDLE(fq_cl));
 fqs->fqs_throttle = 0;
 fq_cl->fcl_stat.fcl_throttle_off++;
}
