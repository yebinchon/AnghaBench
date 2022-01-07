
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ etime; scalar_t__ qtime; scalar_t__ awakeme; scalar_t__ flags; scalar_t__ repl; scalar_t__ delay; scalar_t__ retry; scalar_t__ state; int id; } ;
typedef TYPE_1__ job ;
struct TYPE_5__ {scalar_t__ mstime; } ;


 int JOB_ID_LEN ;
 scalar_t__ mstime () ;
 TYPE_2__ server ;
 int serverLog (int,char*,char*,int ,int ,int,int,int,int,int,long long,long long,scalar_t__,long long,scalar_t__,scalar_t__) ;

void logJobsDebugInfo(int level, char *msg, job *j) {
    serverLog(level,
        "%s %.*s: state=%d retry=%d delay=%d replicate=%d flags=%d now=%lld cached_now=%lld awake=%lld (%lld) qtime=%lld etime=%lld",
        msg,
        JOB_ID_LEN, j->id,
        (int)j->state,
        (int)j->retry,
        (int)j->delay,
        (int)j->repl,
        (int)j->flags,
        (long long)mstime(),
        (long long)server.mstime,
        (long long)j->awakeme-mstime(),
        (long long)j->awakeme,
        (long long)j->qtime-mstime(),
        (long long)j->etime*1000-mstime()
        );
}
