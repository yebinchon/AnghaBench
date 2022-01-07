
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_13__ {int * resample; scalar_t__ next_pts; int * job; } ;
typedef TYPE_5__ hb_work_private_t ;
struct TYPE_14__ {TYPE_4__* audio; TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_work_object_t ;
typedef int hb_job_t ;
struct TYPE_10__ {int normalize_mix_level; int mixdown; } ;
struct TYPE_9__ {int samplerate; } ;
struct TYPE_11__ {TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_12__ {TYPE_3__ config; } ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_SAMPLE_FMT_FLT ;
 TYPE_5__* calloc (int,int) ;
 int * hb_audio_resample_init (int ,int ,int ,int ) ;
 int hb_error (char*) ;

__attribute__((used)) static int declpcmInit( hb_work_object_t * w, hb_job_t * job )
{
    hb_work_private_t * pv = calloc( 1, sizeof( hb_work_private_t ) );
    w->private_data = pv;
    pv->job = job;

    pv->next_pts = (int64_t)AV_NOPTS_VALUE;



    pv->resample =
        hb_audio_resample_init(AV_SAMPLE_FMT_FLT,
                               w->audio->config.in.samplerate,
                               w->audio->config.out.mixdown,
                               w->audio->config.out.normalize_mix_level);
    if (pv->resample == ((void*)0))
    {
        hb_error("declpcmInit: hb_audio_resample_init() failed");
        return 1;
    }

    return 0;
}
