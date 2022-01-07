
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_import_jobs_time; int prev_import_jobs_time; scalar_t__ current_import_jobs_count; scalar_t__ prev_import_jobs_count; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {int mstime; } ;


 TYPE_3__ server ;

void updateQueueImportRate(queue *q) {



    if (server.mstime - q->current_import_jobs_time > 1000) {
        q->prev_import_jobs_time = q->current_import_jobs_time;
        q->prev_import_jobs_count = q->current_import_jobs_count;
        q->current_import_jobs_time = server.mstime;
        q->current_import_jobs_count = 0;
    }

    q->current_import_jobs_count++;
}
