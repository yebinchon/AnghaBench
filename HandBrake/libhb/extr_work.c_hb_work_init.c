
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int volatile* die; int * error; int ** current_job; int * jobs; } ;
typedef TYPE_1__ hb_work_t ;
typedef int hb_thread_t ;
typedef int hb_list_t ;
typedef int hb_job_t ;
typedef int hb_error_code ;


 int HB_LOW_PRIORITY ;
 TYPE_1__* calloc (int,int) ;
 int * hb_thread_init (char*,int ,TYPE_1__*,int ) ;
 int work_func ;

hb_thread_t * hb_work_init( hb_list_t * jobs, volatile int * die, hb_error_code * error, hb_job_t ** job )
{
    hb_work_t * work = calloc( sizeof( hb_work_t ), 1 );

    work->jobs = jobs;
    work->current_job = job;
    work->die = die;
    work->error = error;

    return hb_thread_init( "work", work_func, work, HB_LOW_PRIORITY );
}
