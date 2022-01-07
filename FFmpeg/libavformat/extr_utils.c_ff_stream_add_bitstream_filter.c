
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int time_base_out; int * par_out; } ;
struct TYPE_17__ {int priv_data; TYPE_1__* filter; int par_in; int time_base_in; } ;
struct TYPE_16__ {char* name; } ;
struct TYPE_15__ {TYPE_2__* internal; int time_base; int * codecpar; } ;
struct TYPE_14__ {int nb_bsfcs; TYPE_8__** bsfcs; } ;
struct TYPE_13__ {scalar_t__ priv_class; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVOption ;
typedef int AVCodecParameters ;
typedef int AVBitStreamFilter ;
typedef TYPE_5__ AVBSFContext ;


 int AVERROR_BSF_NOT_FOUND ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int av_bsf_alloc (int const*,TYPE_5__**) ;
 int av_bsf_free (TYPE_5__**) ;
 int * av_bsf_get_by_name (char const*) ;
 int av_bsf_init (TYPE_5__*) ;
 int av_dynarray_add_nofree (TYPE_8__***,int*,TYPE_5__*) ;
 int av_log (int *,int ,char*,char const*,...) ;
 TYPE_4__* av_opt_next (int ,int *) ;
 int av_opt_set_from_string (int ,char const*,char const**,char*,char*) ;
 int avcodec_parameters_copy (int ,int *) ;

int ff_stream_add_bitstream_filter(AVStream *st, const char *name, const char *args)
{
    int ret;
    const AVBitStreamFilter *bsf;
    AVBSFContext *bsfc;
    AVCodecParameters *in_par;

    if (!(bsf = av_bsf_get_by_name(name))) {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown bitstream filter '%s'\n", name);
        return AVERROR_BSF_NOT_FOUND;
    }

    if ((ret = av_bsf_alloc(bsf, &bsfc)) < 0)
        return ret;

    if (st->internal->nb_bsfcs) {
        in_par = st->internal->bsfcs[st->internal->nb_bsfcs - 1]->par_out;
        bsfc->time_base_in = st->internal->bsfcs[st->internal->nb_bsfcs - 1]->time_base_out;
    } else {
        in_par = st->codecpar;
        bsfc->time_base_in = st->time_base;
    }

    if ((ret = avcodec_parameters_copy(bsfc->par_in, in_par)) < 0) {
        av_bsf_free(&bsfc);
        return ret;
    }

    if (args && bsfc->filter->priv_class) {
        const AVOption *opt = av_opt_next(bsfc->priv_data, ((void*)0));
        const char * shorthand[2] = {((void*)0)};

        if (opt)
            shorthand[0] = opt->name;

        if ((ret = av_opt_set_from_string(bsfc->priv_data, args, shorthand, "=", ":")) < 0) {
            av_bsf_free(&bsfc);
            return ret;
        }
    }

    if ((ret = av_bsf_init(bsfc)) < 0) {
        av_bsf_free(&bsfc);
        return ret;
    }

    if ((ret = av_dynarray_add_nofree(&st->internal->bsfcs, &st->internal->nb_bsfcs, bsfc))) {
        av_bsf_free(&bsfc);
        return ret;
    }

    av_log(((void*)0), AV_LOG_VERBOSE,
           "Automatically inserted bitstream filter '%s'; args='%s'\n",
           name, args ? args : "");
    return 1;
}
