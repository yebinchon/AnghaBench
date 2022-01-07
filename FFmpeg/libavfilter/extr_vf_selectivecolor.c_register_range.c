
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct process_range {int range_id; int mask; int get_scale; } ;
struct TYPE_4__ {float** cmyk_adjust; scalar_t__ is_16bit; int nb_process_ranges; struct process_range* process_ranges; } ;
typedef TYPE_1__ SelectiveColorContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int RANGE_BLACKS ;
 int RANGE_BLUES ;
 int RANGE_CYANS ;
 int RANGE_GREENS ;
 int RANGE_MAGENTAS ;
 int RANGE_NEUTRALS ;
 int RANGE_REDS ;
 int RANGE_WHITES ;
 int RANGE_YELLOWS ;
 int av_assert0 (int ) ;
 int av_log (TYPE_1__*,int ,char*,int ,float const,float const,float const,float const) ;
 int * color_names ;
 int get_blacks_scale16 ;
 int get_blacks_scale8 ;
 int get_cmy_scale ;
 int get_neutrals_scale16 ;
 int get_neutrals_scale8 ;
 int get_rgb_scale ;
 int get_whites_scale16 ;
 int get_whites_scale8 ;

__attribute__((used)) static int register_range(SelectiveColorContext *s, int range_id)
{
    const float *cmyk = s->cmyk_adjust[range_id];



    if (cmyk[0] || cmyk[1] || cmyk[2] || cmyk[3]) {
        struct process_range *pr = &s->process_ranges[s->nb_process_ranges++];

        if (cmyk[0] < -1.0 || cmyk[0] > 1.0 ||
            cmyk[1] < -1.0 || cmyk[1] > 1.0 ||
            cmyk[2] < -1.0 || cmyk[2] > 1.0 ||
            cmyk[3] < -1.0 || cmyk[3] > 1.0) {
            av_log(s, AV_LOG_ERROR, "Invalid %s adjustments (%g %g %g %g). "
                   "Settings must be set in [-1;1] range\n",
                   color_names[range_id], cmyk[0], cmyk[1], cmyk[2], cmyk[3]);
            return AVERROR(EINVAL);
        }

        pr->range_id = range_id;
        pr->mask = 1 << range_id;
        if (pr->mask & (1<<RANGE_REDS | 1<<RANGE_GREENS | 1<<RANGE_BLUES)) pr->get_scale = get_rgb_scale;
        else if (pr->mask & (1<<RANGE_CYANS | 1<<RANGE_MAGENTAS | 1<<RANGE_YELLOWS)) pr->get_scale = get_cmy_scale;
        else if (!s->is_16bit && (pr->mask & 1<<RANGE_WHITES)) pr->get_scale = get_whites_scale8;
        else if (!s->is_16bit && (pr->mask & 1<<RANGE_NEUTRALS)) pr->get_scale = get_neutrals_scale8;
        else if (!s->is_16bit && (pr->mask & 1<<RANGE_BLACKS)) pr->get_scale = get_blacks_scale8;
        else if ( s->is_16bit && (pr->mask & 1<<RANGE_WHITES)) pr->get_scale = get_whites_scale16;
        else if ( s->is_16bit && (pr->mask & 1<<RANGE_NEUTRALS)) pr->get_scale = get_neutrals_scale16;
        else if ( s->is_16bit && (pr->mask & 1<<RANGE_BLACKS)) pr->get_scale = get_blacks_scale16;
        else
            av_assert0(0);
    }
    return 0;
}
