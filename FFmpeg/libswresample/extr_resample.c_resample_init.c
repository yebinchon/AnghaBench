
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
typedef enum SwrFilterType { ____Placeholder_SwrFilterType } SwrFilterType ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_9__ {int phase_count; int linear; double factor; int filter_length; int format; int filter_type; double kaiser_beta; int felem_size; int filter_shift; int filter_alloc; int phase_count_compensation; int src_incr; int dst_incr; int ideal_dst_incr; int dst_incr_div; int dst_incr_mod; int index; scalar_t__ filter_bank; scalar_t__ frac; scalar_t__ compensation_distance; } ;
typedef TYPE_1__ ResampleContext ;


 int AV_LOG_ERROR ;




 void* FFALIGN (int,int) ;
 int FFMAX (int,int) ;
 double FFMIN (int,double) ;
 int INT32_MAX ;
 int INT_MAX ;
 int av_assert0 (int ) ;
 scalar_t__ av_calloc (int,int) ;
 int av_free (TYPE_1__*) ;
 int av_freep (scalar_t__*) ;
 int av_get_bytes_per_sample (int) ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* av_mallocz (int) ;
 int av_reduce (int*,int*,int,int,int) ;
 scalar_t__ build_filter (TYPE_1__*,void*,double,int,int,int,int,int,double) ;
 scalar_t__ ceil (int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int resample_free (TYPE_1__**) ;
 int swri_resample_dsp_init (TYPE_1__*) ;

__attribute__((used)) static ResampleContext *resample_init(ResampleContext *c, int out_rate, int in_rate, int filter_size, int phase_shift, int linear,
                                    double cutoff0, enum AVSampleFormat format, enum SwrFilterType filter_type, double kaiser_beta,
                                    double precision, int cheby, int exact_rational)
{
    double cutoff = cutoff0? cutoff0 : 0.97;
    double factor= FFMIN(out_rate * cutoff / in_rate, 1.0);
    int phase_count= 1<<phase_shift;
    int phase_count_compensation = phase_count;
    int filter_length = FFMAX((int)ceil(filter_size/factor), 1);

    if (filter_length > 1)
        filter_length = FFALIGN(filter_length, 2);

    if (exact_rational) {
        int phase_count_exact, phase_count_exact_den;

        av_reduce(&phase_count_exact, &phase_count_exact_den, out_rate, in_rate, INT_MAX);
        if (phase_count_exact <= phase_count) {
            phase_count_compensation = phase_count_exact * (phase_count / phase_count_exact);
            phase_count = phase_count_exact;
        }
    }

    if (!c || c->phase_count != phase_count || c->linear!=linear || c->factor != factor
           || c->filter_length != filter_length || c->format != format
           || c->filter_type != filter_type || c->kaiser_beta != kaiser_beta) {
        resample_free(&c);
        c = av_mallocz(sizeof(*c));
        if (!c)
            return ((void*)0);

        c->format= format;

        c->felem_size= av_get_bytes_per_sample(c->format);

        switch(c->format){
        case 129:
            c->filter_shift = 15;
            break;
        case 128:
            c->filter_shift = 30;
            break;
        case 130:
        case 131:
            c->filter_shift = 0;
            break;
        default:
            av_log(((void*)0), AV_LOG_ERROR, "Unsupported sample format\n");
            av_assert0(0);
        }

        if (filter_size/factor > INT32_MAX/256) {
            av_log(((void*)0), AV_LOG_ERROR, "Filter length too large\n");
            goto error;
        }

        c->phase_count = phase_count;
        c->linear = linear;
        c->factor = factor;
        c->filter_length = filter_length;
        c->filter_alloc = FFALIGN(c->filter_length, 8);
        c->filter_bank = av_calloc(c->filter_alloc, (phase_count+1)*c->felem_size);
        c->filter_type = filter_type;
        c->kaiser_beta = kaiser_beta;
        c->phase_count_compensation = phase_count_compensation;
        if (!c->filter_bank)
            goto error;
        if (build_filter(c, (void*)c->filter_bank, factor, c->filter_length, c->filter_alloc, phase_count, 1<<c->filter_shift, filter_type, kaiser_beta))
            goto error;
        memcpy(c->filter_bank + (c->filter_alloc*phase_count+1)*c->felem_size, c->filter_bank, (c->filter_alloc-1)*c->felem_size);
        memcpy(c->filter_bank + (c->filter_alloc*phase_count )*c->felem_size, c->filter_bank + (c->filter_alloc - 1)*c->felem_size, c->felem_size);
    }

    c->compensation_distance= 0;
    if(!av_reduce(&c->src_incr, &c->dst_incr, out_rate, in_rate * (int64_t)phase_count, INT32_MAX/2))
        goto error;
    while (c->dst_incr < (1<<20) && c->src_incr < (1<<20)) {
        c->dst_incr *= 2;
        c->src_incr *= 2;
    }
    c->ideal_dst_incr = c->dst_incr;
    c->dst_incr_div = c->dst_incr / c->src_incr;
    c->dst_incr_mod = c->dst_incr % c->src_incr;

    c->index= -phase_count*((c->filter_length-1)/2);
    c->frac= 0;

    swri_resample_dsp_init(c);

    return c;
error:
    av_freep(&c->filter_bank);
    av_free(c);
    return ((void*)0);
}
