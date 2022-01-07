
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoder_preset; } ;
typedef TYPE_1__ hb_job_t ;


 int hb_update_str (int *,char const*) ;

void hb_job_set_encoder_preset(hb_job_t *job, const char *preset)
{
    if (job != ((void*)0))
    {
        if (preset == ((void*)0) || preset[0] == 0)
        {
            preset = ((void*)0);
        }
        hb_update_str(&job->encoder_preset, preset);
    }
}
