
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_4__ {scalar_t__ retry; scalar_t__ qtime; } ;
typedef TYPE_1__ job ;


 int updateJobAwakeTime (TYPE_1__*,int ) ;

void updateJobRequeueTime(job *j, mstime_t qtime) {

    if (j->retry == 0 || j->qtime == 0) return;
    j->qtime = qtime;
    updateJobAwakeTime(j,0);
}
