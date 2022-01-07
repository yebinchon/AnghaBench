
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_9__ {TYPE_1__ working; } ;
struct TYPE_10__ {TYPE_2__ param; } ;
typedef TYPE_3__ hb_state_t ;
struct TYPE_11__ {int h; int * done_error; } ;
typedef TYPE_4__ hb_job_t ;


 int hb_get_state2 (int ,TYPE_3__*) ;
 int hb_set_state (int ,TYPE_3__*) ;

__attribute__((used)) static void SetWorkStateInfo(hb_job_t *job)
{
    hb_state_t state;

    if (job == ((void*)0))
    {
        return;
    }
    hb_get_state2(job->h, &state);
    state.param.working.error = *job->done_error;
    hb_set_state( job->h, &state );
}
