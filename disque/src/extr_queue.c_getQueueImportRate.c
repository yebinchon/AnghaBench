
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {double prev_import_jobs_time; double current_import_jobs_count; scalar_t__ current_import_jobs_time; scalar_t__ prev_import_jobs_count; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {double mstime; } ;


 scalar_t__ IMPORT_RATE_WINDOW ;
 int ceil (double) ;
 TYPE_2__ server ;

uint32_t getQueueImportRate(queue *q) {
    double elapsed = server.mstime - q->prev_import_jobs_time;
    double messages = (double)q->prev_import_jobs_count +
                              q->current_import_jobs_count;



    if ((server.mstime - q->current_import_jobs_time) > IMPORT_RATE_WINDOW)
        return 0;


    if (elapsed < 50) elapsed = 50;

    return ceil((double)messages*1000/elapsed);
}
