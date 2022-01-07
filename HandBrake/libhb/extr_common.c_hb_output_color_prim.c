
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ color_prim_override; int color_prim; } ;
typedef TYPE_1__ hb_job_t ;


 scalar_t__ HB_COLR_PRI_UNDEF ;

int hb_output_color_prim(hb_job_t * job)
{
    if (job->color_prim_override != HB_COLR_PRI_UNDEF)
        return job->color_prim_override;
    else
        return job->color_prim;
}
