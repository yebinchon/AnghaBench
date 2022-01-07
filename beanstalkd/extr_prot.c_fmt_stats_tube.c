
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_8__ {int pause_ct; int total_delete_ct; int waiting_ct; int total_jobs_ct; int buried_ct; int reserved_ct; int urgent_ct; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_9__ {int pause; int unpause_at; TYPE_3__ stat; int watching_ct; int using_ct; TYPE_2__ delay; TYPE_1__ ready; int name; } ;
typedef TYPE_4__ Tube ;


 char* STATS_TUBE_FMT ;
 int nanoseconds () ;
 int snprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int
fmt_stats_tube(char *buf, size_t size, Tube *t)
{
    uint64 time_left;

    if (t->pause > 0) {
        time_left = (t->unpause_at - nanoseconds()) / 1000000000;
    } else {
        time_left = 0;
    }
    return snprintf(buf, size, STATS_TUBE_FMT,
            t->name,
            t->stat.urgent_ct,
            t->ready.len,
            t->stat.reserved_ct,
            t->delay.len,
            t->stat.buried_ct,
            t->stat.total_jobs_ct,
            t->using_ct,
            t->watching_ct,
            t->stat.waiting_ct,
            t->stat.total_delete_ct,
            t->stat.pause_ct,
            t->pause / 1000000000,
            time_left);
}
