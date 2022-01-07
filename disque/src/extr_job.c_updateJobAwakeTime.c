
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_7__ {scalar_t__ state; int qtime; int flags; int awakeme; scalar_t__ etime; } ;
typedef TYPE_1__ job ;
struct TYPE_8__ {int awakeme; } ;


 int JOB_FLAG_BCAST_WILLQUEUE ;
 scalar_t__ JOB_STATE_ACKED ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 scalar_t__ JOB_WILLQUEUE_ADVANCE ;
 int getNextGCRetryTime (TYPE_1__*) ;
 TYPE_5__ server ;
 int serverAssert (int ) ;
 int skiplistDelete (int ,TYPE_1__*) ;
 int skiplistInsert (int ,TYPE_1__*) ;

void updateJobAwakeTime(job *j, mstime_t at) {
    if (at == 0) {



        at = (mstime_t)j->etime*1000+1000;

        if (j->state == JOB_STATE_ACKED) {

            mstime_t retry_gc_again = getNextGCRetryTime(j);
            if (retry_gc_again < at) at = retry_gc_again;
        } else if ((j->state == JOB_STATE_ACTIVE ||
                    j->state == JOB_STATE_QUEUED) && j->qtime) {



            mstime_t qtime = j->qtime;
            if (j->flags & JOB_FLAG_BCAST_WILLQUEUE)
                qtime -= JOB_WILLQUEUE_ADVANCE;
            if (qtime < at) at = qtime;
        }
    }


    if (at != j->awakeme) {

        if (j->awakeme) {
            serverAssert(skiplistDelete(server.awakeme,j));
        }

        j->awakeme = at;
        skiplistInsert(server.awakeme,j);
    }
}
