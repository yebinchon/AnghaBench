
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* json; } ;
typedef TYPE_1__ hb_job_t ;
typedef int hb_handle_t ;


 int hb_add (int *,TYPE_1__*) ;

int hb_add_json( hb_handle_t * h, const char * json_job )
{
    hb_job_t job;

    job.json = json_job;
    return hb_add(h, &job);
}
