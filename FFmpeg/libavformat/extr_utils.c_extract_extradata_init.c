
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int time_base_in; int par_in; } ;
struct TYPE_11__ {int time_base; int codecpar; TYPE_2__* internal; } ;
struct TYPE_9__ {int inited; int pkt; TYPE_6__* bsf; } ;
struct TYPE_10__ {TYPE_1__ extract_extradata; } ;
typedef TYPE_2__ AVStreamInternal ;
typedef TYPE_3__ AVStream ;
typedef int AVBitStreamFilter ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bsf_alloc (int const*,TYPE_6__**) ;
 int av_bsf_free (TYPE_6__**) ;
 int * av_bsf_get_by_name (char*) ;
 int av_bsf_init (TYPE_6__*) ;
 int av_packet_alloc () ;
 int av_packet_free (int *) ;
 int avcodec_parameters_copy (int ,int ) ;
 int extract_extradata_check (TYPE_3__*) ;

__attribute__((used)) static int extract_extradata_init(AVStream *st)
{
    AVStreamInternal *sti = st->internal;
    const AVBitStreamFilter *f;
    int ret;

    f = av_bsf_get_by_name("extract_extradata");
    if (!f)
        goto finish;


    ret = extract_extradata_check(st);
    if (!ret)
        goto finish;

    sti->extract_extradata.pkt = av_packet_alloc();
    if (!sti->extract_extradata.pkt)
        return AVERROR(ENOMEM);

    ret = av_bsf_alloc(f, &sti->extract_extradata.bsf);
    if (ret < 0)
        goto fail;

    ret = avcodec_parameters_copy(sti->extract_extradata.bsf->par_in,
                                  st->codecpar);
    if (ret < 0)
        goto fail;

    sti->extract_extradata.bsf->time_base_in = st->time_base;

    ret = av_bsf_init(sti->extract_extradata.bsf);
    if (ret < 0)
        goto fail;

finish:
    sti->extract_extradata.inited = 1;

    return 0;
fail:
    av_bsf_free(&sti->extract_extradata.bsf);
    av_packet_free(&sti->extract_extradata.pkt);
    return ret;
}
