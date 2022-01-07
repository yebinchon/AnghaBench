
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* task_t ;
struct TYPE_15__ {scalar_t__ ri_diskio_byteswritten; scalar_t__ ri_diskio_bytesread; } ;
typedef TYPE_5__ rusage_info_current ;
struct TYPE_14__ {TYPE_3__* task_io_stats; } ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_13__ {TYPE_2__ disk_reads; TYPE_1__ total_io; } ;


 TYPE_4__* TASK_NULL ;
 int assert (int) ;
 int task_lock (TYPE_4__*) ;
 int task_unlock (TYPE_4__*) ;

int
fill_task_io_rusage(task_t task, rusage_info_current *ri)
{
 assert(task != TASK_NULL);
 task_lock(task);

 if (task->task_io_stats) {
  ri->ri_diskio_bytesread = task->task_io_stats->disk_reads.size;
  ri->ri_diskio_byteswritten = (task->task_io_stats->total_io.size - task->task_io_stats->disk_reads.size);
 } else {

  ri->ri_diskio_bytesread = 0;
  ri->ri_diskio_byteswritten = 0;
 }
 task_unlock(task);
 return (0);
}
