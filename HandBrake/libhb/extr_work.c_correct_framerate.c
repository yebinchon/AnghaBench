
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {int num; double den; } ;
struct TYPE_7__ {double den; scalar_t__ num; } ;
struct TYPE_8__ {int cfr; TYPE_4__ vrate; TYPE_1__ orig_vrate; } ;
typedef TYPE_2__ hb_job_t ;
struct TYPE_9__ {scalar_t__ total_time; long long out_frame_count; } ;
typedef TYPE_3__ hb_interjob_t ;


 double ABS (double) ;
 int INT_MAX ;
 int hb_limit_rational64 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,int ) ;
 int hb_log (char*,scalar_t__,double,int,double) ;
 scalar_t__ hb_video_framerate_get_close (TYPE_4__*,int) ;
 int hb_video_framerate_get_limits (int*,int*,int*) ;

void correct_framerate( hb_interjob_t * interjob, hb_job_t * job )
{
    if (interjob->total_time <= 0 || interjob->out_frame_count <= 0 ||
        job->cfr == 1)
    {


        return;
    }


    int64_t num, den;
    num = interjob->out_frame_count * 90000LL;
    den = interjob->total_time;
    hb_limit_rational64(&num, &den, num, den, INT_MAX);

    job->vrate.num = num;
    job->vrate.den = den;

    den = hb_video_framerate_get_close(&job->vrate, 2.);
    if (den > 0)
    {
        int low, high, clock;
        hb_video_framerate_get_limits(&low, &high, &clock);
        job->vrate.num = clock;
        job->vrate.den = den;
    }
    if (ABS(((double)job->orig_vrate.num / job->orig_vrate.den) -
            ((double) job->vrate.num / job->vrate.den)) > 0.05)
    {
        hb_log("work: correcting framerate, %d/%d -> %d/%d",
               job->orig_vrate.num, job->orig_vrate.den,
               job->vrate.num, job->vrate.den);
    }
}
