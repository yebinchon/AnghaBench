
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoder_tune; } ;
typedef TYPE_1__ hb_job_t ;


 int hb_update_str (int *,char const*) ;

void hb_job_set_encoder_tune(hb_job_t *job, const char *tune)
{
    if (job != ((void*)0))
    {
        if (tune == ((void*)0) || tune[0] == 0)
        {
            tune = ((void*)0);
        }
        hb_update_str(&job->encoder_tune, tune);
    }
}
