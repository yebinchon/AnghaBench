
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ResampleContext {int dummy; } ;
typedef int soxr_t ;
struct TYPE_4__ {double precision; int bw_pc; int passband_end; } ;
typedef TYPE_1__ soxr_quality_spec_t ;
typedef int soxr_io_spec_t ;
typedef int soxr_error_t ;
typedef int soxr_datatype_t ;
typedef enum SwrFilterType { ____Placeholder_SwrFilterType } SwrFilterType ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_DBL ;
 int AV_SAMPLE_FMT_DBLP ;
 int AV_SAMPLE_FMT_FLT ;
 int AV_SAMPLE_FMT_FLTP ;
 int AV_SAMPLE_FMT_S16 ;
 int AV_SAMPLE_FMT_S16P ;
 int AV_SAMPLE_FMT_S32 ;
 int AV_SAMPLE_FMT_S32P ;
 int FFMAX (int ,double) ;
 int FFMIN (double,double) ;
 int SOXR_FLOAT32_I ;
 int SOXR_FLOAT32_S ;
 int SOXR_FLOAT64_I ;
 int SOXR_FLOAT64_S ;
 int SOXR_HI_PREC_CLOCK ;
 int SOXR_INT16_I ;
 int SOXR_INT16_S ;
 int SOXR_INT32_I ;
 int SOXR_INT32_S ;
 int SOXR_ROLLOFF_NONE ;
 int av_log (int *,int ,char*,int ) ;
 scalar_t__ soxr_create (int,int,int ,int *,int *,TYPE_1__*,int ) ;
 int soxr_delete (int ) ;
 int soxr_io_spec (int ,int ) ;
 TYPE_1__ soxr_quality_spec (int,int) ;

__attribute__((used)) static struct ResampleContext *create(struct ResampleContext *c, int out_rate, int in_rate, int filter_size, int phase_shift, int linear,
        double cutoff, enum AVSampleFormat format, enum SwrFilterType filter_type, double kaiser_beta, double precision, int cheby, int exact_rational){
    soxr_error_t error;

    soxr_datatype_t type =
        format == AV_SAMPLE_FMT_S16P? SOXR_INT16_S :
        format == AV_SAMPLE_FMT_S16 ? SOXR_INT16_I :
        format == AV_SAMPLE_FMT_S32P? SOXR_INT32_S :
        format == AV_SAMPLE_FMT_S32 ? SOXR_INT32_I :
        format == AV_SAMPLE_FMT_FLTP? SOXR_FLOAT32_S :
        format == AV_SAMPLE_FMT_FLT ? SOXR_FLOAT32_I :
        format == AV_SAMPLE_FMT_DBLP? SOXR_FLOAT64_S :
        format == AV_SAMPLE_FMT_DBL ? SOXR_FLOAT64_I : (soxr_datatype_t)-1;

    soxr_io_spec_t io_spec = soxr_io_spec(type, type);

    soxr_quality_spec_t q_spec = soxr_quality_spec((int)((precision-2)/4), (SOXR_HI_PREC_CLOCK|SOXR_ROLLOFF_NONE)*!!cheby);
    q_spec.precision = precision;

    q_spec.bw_pc = cutoff? FFMAX(FFMIN(cutoff,.995),.8)*100 : q_spec.bw_pc;




    soxr_delete((soxr_t)c);
    c = (struct ResampleContext *)
        soxr_create(in_rate, out_rate, 0, &error, &io_spec, &q_spec, 0);
    if (!c)
        av_log(((void*)0), AV_LOG_ERROR, "soxr_create: %s\n", error);
    return c;
}
