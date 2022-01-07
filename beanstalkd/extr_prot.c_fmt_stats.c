
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_4__ ru_stime; TYPE_3__ ru_utime; } ;
struct TYPE_18__ {int waiting_ct; int total_jobs_ct; int buried_ct; int reserved_ct; int urgent_ct; } ;
struct TYPE_17__ {int machine; int version; int nodename; } ;
struct TYPE_16__ {int len; } ;
struct TYPE_14__ {int filesize; int nrec; int nmig; TYPE_2__* cur; TYPE_1__* head; } ;
struct TYPE_15__ {TYPE_5__ wal; } ;
struct TYPE_11__ {int seq; } ;
struct TYPE_10__ {int seq; } ;
typedef TYPE_6__ Server ;


 size_t OP_BURY ;
 size_t OP_DELETE ;
 size_t OP_IGNORE ;
 size_t OP_KICK ;
 size_t OP_LIST_TUBES ;
 size_t OP_LIST_TUBES_WATCHED ;
 size_t OP_LIST_TUBE_USED ;
 size_t OP_PAUSE_TUBE ;
 size_t OP_PEEKJOB ;
 size_t OP_PEEK_BURIED ;
 size_t OP_PEEK_DELAYED ;
 size_t OP_PEEK_READY ;
 size_t OP_PUT ;
 size_t OP_RELEASE ;
 size_t OP_RESERVE ;
 size_t OP_RESERVE_TIMEOUT ;
 size_t OP_STATS ;
 size_t OP_STATSJOB ;
 size_t OP_STATS_TUBE ;
 size_t OP_TOUCH ;
 size_t OP_USE ;
 size_t OP_WATCH ;
 int RUSAGE_SELF ;
 char* STATS_FMT ;
 int count_cur_conns () ;
 int count_cur_producers () ;
 int count_cur_workers () ;
 int count_tot_conns () ;
 scalar_t__ drain_mode ;
 int get_delayed_job_ct () ;
 scalar_t__ getpid () ;
 int getrusage (int ,struct rusage*) ;
 TYPE_9__ global_stat ;
 int instance_hex ;
 int job_data_size_limit ;
 TYPE_8__ node_info ;
 int * op_ct ;
 int ready_ct ;
 int snprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,long,int ,int,int,int,int,int ,int,int,int ,int ,int ,char*,int ,int ,int ,int ) ;
 int timeout_ct ;
 TYPE_7__ tubes ;
 int uptime () ;
 int version ;

__attribute__((used)) static int
fmt_stats(char *buf, size_t size, void *x)
{
    int whead = 0, wcur = 0;
    Server *s = x;
    struct rusage ru;

    s = x;

    if (s->wal.head) {
        whead = s->wal.head->seq;
    }

    if (s->wal.cur) {
        wcur = s->wal.cur->seq;
    }

    getrusage(RUSAGE_SELF, &ru);
    return snprintf(buf, size, STATS_FMT,
                    global_stat.urgent_ct,
                    ready_ct,
                    global_stat.reserved_ct,
                    get_delayed_job_ct(),
                    global_stat.buried_ct,
                    op_ct[OP_PUT],
                    op_ct[OP_PEEKJOB],
                    op_ct[OP_PEEK_READY],
                    op_ct[OP_PEEK_DELAYED],
                    op_ct[OP_PEEK_BURIED],
                    op_ct[OP_RESERVE],
                    op_ct[OP_RESERVE_TIMEOUT],
                    op_ct[OP_DELETE],
                    op_ct[OP_RELEASE],
                    op_ct[OP_USE],
                    op_ct[OP_WATCH],
                    op_ct[OP_IGNORE],
                    op_ct[OP_BURY],
                    op_ct[OP_KICK],
                    op_ct[OP_TOUCH],
                    op_ct[OP_STATS],
                    op_ct[OP_STATSJOB],
                    op_ct[OP_STATS_TUBE],
                    op_ct[OP_LIST_TUBES],
                    op_ct[OP_LIST_TUBE_USED],
                    op_ct[OP_LIST_TUBES_WATCHED],
                    op_ct[OP_PAUSE_TUBE],
                    timeout_ct,
                    global_stat.total_jobs_ct,
                    job_data_size_limit,
                    tubes.len,
                    count_cur_conns(),
                    count_cur_producers(),
                    count_cur_workers(),
                    global_stat.waiting_ct,
                    count_tot_conns(),
                    (long) getpid(),
                    version,
                    (int) ru.ru_utime.tv_sec, (int) ru.ru_utime.tv_usec,
                    (int) ru.ru_stime.tv_sec, (int) ru.ru_stime.tv_usec,
                    uptime(),
                    whead,
                    wcur,
                    s->wal.nmig,
                    s->wal.nrec,
                    s->wal.filesize,
                    drain_mode ? "true" : "false",
                    instance_hex,
                    node_info.nodename,
                    node_info.version,
                    node_info.machine);
}
