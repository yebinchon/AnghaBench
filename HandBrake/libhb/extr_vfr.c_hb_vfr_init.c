
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hb_filter_private_s {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {double num; double den; } ;
struct TYPE_8__ {int cfr; int frame_analysis_depth; int frame_analysis_duration; double frame_duration; scalar_t__ out_last_stop; TYPE_6__ vrate; scalar_t__* lost_time; scalar_t__ total_gained_time; scalar_t__ total_lost_time; scalar_t__* last_stop; scalar_t__* last_start; scalar_t__ extended_frames; scalar_t__ dropped_frames; int frame_rate_list; int delay_queue; int job; int * frame_metric; TYPE_6__ input_vrate; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {int settings; TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
struct TYPE_10__ {int cfr; TYPE_6__ vrate; int job; } ;
typedef TYPE_3__ hb_filter_init_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int INT_MAX ;
 int MAX_FRAME_ANALYSIS_DEPTH ;
 int build_gamma_lut (TYPE_1__*) ;
 void* calloc (int,int) ;
 int ceil (double) ;
 int hb_dict_extract_int (int*,int ,char*) ;
 int hb_dict_extract_rational (TYPE_6__*,int ,char*) ;
 int hb_fifo_init (int,int) ;
 int hb_list_init () ;

__attribute__((used)) static int hb_vfr_init(hb_filter_object_t *filter, hb_filter_init_t *init)
{
    filter->private_data = calloc(1, sizeof(struct hb_filter_private_s));
    hb_filter_private_t *pv = filter->private_data;
    build_gamma_lut(pv);

    pv->cfr = init->cfr;
    pv->input_vrate = pv->vrate = init->vrate;
    hb_dict_extract_int(&pv->cfr, filter->settings, "mode");
    hb_dict_extract_rational(&pv->vrate, filter->settings, "rate");


    pv->frame_analysis_depth = 2;



    double in_vrate = (double)pv->input_vrate.num / pv->input_vrate.den;
    double out_vrate = (double)pv->vrate.num / pv->vrate.den;
    if (in_vrate > out_vrate)
    {





        double factor = in_vrate / out_vrate;
        if (factor > 1.0 && factor < 2.0)
        {
            factor = 1 / (factor - 1);
        }
        pv->frame_analysis_depth = ceil(factor) + 1;


        if (pv->frame_analysis_depth > MAX_FRAME_ANALYSIS_DEPTH)
        {
            pv->frame_analysis_depth = MAX_FRAME_ANALYSIS_DEPTH;
        }
    }
    pv->frame_analysis_duration = pv->frame_analysis_depth * 90000 / in_vrate;
    pv->frame_metric = calloc(pv->frame_analysis_depth, sizeof(double));
    pv->frame_metric[0] = INT_MAX;

    pv->job = init->job;


    pv->delay_queue = hb_fifo_init( 8, 1 );
    pv->frame_rate_list = hb_list_init();







    pv->dropped_frames = 0;
    pv->extended_frames = 0;
    pv->last_start[0] = 0;
    pv->last_stop[0] = 0;
    pv->total_lost_time = 0;
    pv->total_gained_time = 0;
    pv->lost_time[0] = 0;
    pv->lost_time[1] = 0;
    pv->lost_time[2] = 0;
    pv->lost_time[3] = 0;

    if (pv->cfr == 2)
    {


        double source_fps = (double)init->vrate.num / init->vrate.den;
        double peak_fps = (double)pv->vrate.num / pv->vrate.den;
        if (source_fps > peak_fps)
        {


            init->vrate = pv->vrate;
        }
    }
    else
    {
        init->vrate = pv->vrate;
    }
    pv->frame_duration = (double)pv->vrate.den * 90000. / pv->vrate.num;
    pv->out_last_stop = (int64_t)AV_NOPTS_VALUE;
    init->cfr = pv->cfr;

    return 0;
}
