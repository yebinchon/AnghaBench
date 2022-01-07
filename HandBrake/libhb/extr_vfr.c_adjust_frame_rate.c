
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef double int64_t ;
struct TYPE_19__ {int cfr; double out_last_stop; int frame_analysis_depth; double frame_duration; int count_frames; int dups; scalar_t__* frame_metric; int frame_rate_list; int drops; int gamma_lut; int sequence; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_18__ {double stop; double start; double pcr; scalar_t__ new_chap; } ;
struct TYPE_20__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int delete_metric (scalar_t__*,int,int) ;
 int find_drop_frame (TYPE_2__*,int) ;
 int fprintf (int ,char*,...) ;
 int hb_buffer_close (TYPE_3__**) ;
 TYPE_3__* hb_buffer_dup (TYPE_3__*) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 TYPE_3__* hb_buffer_list_clear (int *) ;
 int hb_list_add (int ,TYPE_3__*) ;
 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_3__*) ;
 int hb_log (char*,double,double,...) ;
 scalar_t__ motion_metric (int ,TYPE_3__*,TYPE_3__*) ;
 int stderr ;

__attribute__((used)) static hb_buffer_t * adjust_frame_rate( hb_filter_private_t * pv,
                                        hb_buffer_t * in )
{

    if (pv->cfr == 0)
    {
        ++pv->count_frames;
        pv->out_last_stop = in->s.stop;
        return in;
    }

    int count;


    if (in != ((void*)0))
    {
        if (pv->out_last_stop == (int64_t)AV_NOPTS_VALUE)
        {
            pv->out_last_stop = in->s.start;
        }




        hb_list_add(pv->frame_rate_list, in);
        count = hb_list_count(pv->frame_rate_list);
        if (count < 2)
        {
            return ((void*)0);
        }

        hb_buffer_t * penultimate, * ultimate;
        penultimate = hb_list_item(pv->frame_rate_list, count - 2);
        ultimate = hb_list_item(pv->frame_rate_list, count - 1);

        pv->frame_metric[count - 1] = motion_metric(pv->gamma_lut,
                                                    penultimate, ultimate);

        if (count < pv->frame_analysis_depth)
        {
            return ((void*)0);
        }
    }
    else
    {
        count = hb_list_count(pv->frame_rate_list);
    }

    hb_buffer_list_t list;
    hb_buffer_t * out;
    double cfr_stop;
    int drop_frame;

    hb_buffer_list_clear(&list);

    drop_frame = find_drop_frame(pv, count);
    if (drop_frame >= 0)
    {
        out = hb_list_item(pv->frame_rate_list, drop_frame);
        hb_list_rem(pv->frame_rate_list, out);
        hb_buffer_close(&out);
        delete_metric(pv->frame_metric, drop_frame, count);
        ++pv->drops;
        return ((void*)0);
    }

    out = hb_list_item(pv->frame_rate_list, 0);







    hb_list_rem(pv->frame_rate_list, out);
    hb_buffer_list_append(&list, out);
    delete_metric(pv->frame_metric, 0, count);


    out->s.start = pv->out_last_stop;
    cfr_stop = pv->out_last_stop + pv->frame_duration;





    ++pv->count_frames;
    if (pv->cfr > 1)
    {


        if (out->s.stop < cfr_stop)
        {
            out->s.stop = pv->out_last_stop = cfr_stop;
        }
        else
        {
            pv->out_last_stop = out->s.stop;
        }
    }
    else
    {




        double excess = (double)out->s.stop - cfr_stop;
        out->s.stop = pv->out_last_stop = cfr_stop;
        for (; excess >= pv->frame_duration; excess -= pv->frame_duration)
        {

            hb_buffer_t *dup = hb_buffer_dup( out );
            dup->s.new_chap = 0;
            dup->s.start = cfr_stop;
            cfr_stop += pv->frame_duration;
            dup->s.stop = pv->out_last_stop = cfr_stop;
            hb_buffer_list_append(&list, dup);
            ++pv->dups;
            ++pv->count_frames;
        }
    }

    return hb_buffer_list_clear(&list);
}
