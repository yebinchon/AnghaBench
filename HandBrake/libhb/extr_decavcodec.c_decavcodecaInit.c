
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_16__ ;
typedef struct TYPE_35__ TYPE_15__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_13__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef scalar_t__ int64_t ;
struct TYPE_45__ {int * frame; TYPE_6__* audio; TYPE_16__* context; int * resample; int parser; TYPE_3__* title; int list; scalar_t__ next_pts; int drop_samples; TYPE_11__* job; } ;
typedef TYPE_9__ hb_work_private_t ;
struct TYPE_30__ {int codec_param; TYPE_6__* audio; TYPE_3__* title; TYPE_9__* private_data; } ;
typedef TYPE_10__ hb_work_object_t ;
struct TYPE_31__ {TYPE_3__* title; } ;
typedef TYPE_11__ hb_job_t ;
typedef int drc_scale ;
struct TYPE_44__ {int codec; int mixdown; float dynamic_range_compression; int track; int normalize_mix_level; } ;
struct TYPE_38__ {int den; int num; } ;
struct TYPE_41__ {scalar_t__ channel_layout; TYPE_2__ timebase; int codec_param; int codec; int samplerate; int encoder_delay; } ;
struct TYPE_43__ {TYPE_5__ in; TYPE_8__ out; } ;
struct TYPE_42__ {size_t id; TYPE_7__ config; } ;
struct TYPE_40__ {int codecpar; } ;
struct TYPE_39__ {int * opaque_priv; } ;
struct TYPE_37__ {int den; int num; } ;
struct TYPE_36__ {int codec_id; TYPE_1__ pkt_timebase; int request_channel_layout; } ;
struct TYPE_35__ {int * priv_class; } ;
struct TYPE_34__ {int key; } ;
struct TYPE_33__ {TYPE_4__** streams; } ;
struct TYPE_32__ {float max; } ;
typedef TYPE_12__ AVOption ;
typedef TYPE_13__ AVFormatContext ;
typedef TYPE_14__ AVDictionaryEntry ;
typedef int AVDictionary ;
typedef TYPE_15__ AVCodec ;


 int AV_CH_LAYOUT_5POINT1 ;
 scalar_t__ AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;




 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_OPT_FLAG_AUDIO_PARAM ;
 int AV_OPT_FLAG_DECODING_PARAM ;
 int AV_OPT_SEARCH_FAKE_OBJ ;
 int AV_SAMPLE_FMT_FLT ;
 int HB_ACODEC_PASS_FLAG ;


 int HB_AMIXDOWN_MONO ;
 int av_dict_free (int **) ;
 TYPE_14__* av_dict_get (int *,char*,TYPE_14__*,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int * av_frame_alloc () ;
 TYPE_12__* av_opt_find2 (void*,char*,int *,int,int ,int *) ;
 int av_parser_init (int) ;
 TYPE_16__* avcodec_alloc_context3 (TYPE_15__*) ;
 TYPE_15__* avcodec_find_decoder (int) ;
 int avcodec_parameters_to_context (TYPE_16__*,int ) ;
 TYPE_9__* calloc (int,int) ;
 scalar_t__ hb_audio_can_apply_drc (int ,int ,int ) ;
 int * hb_audio_resample_init (int ,int ,int,int ) ;
 scalar_t__ hb_avcodec_open (TYPE_16__*,TYPE_15__*,int **,int ) ;
 int hb_buffer_list_clear (int *) ;
 int hb_error (char*) ;
 int hb_ff_mixdown_xlat (int,int *) ;
 int hb_ff_set_sample_fmt (TYPE_16__*,TYPE_15__*,int ) ;
 int hb_log (char*,...) ;
 int snprintf (char*,int,char*,float) ;

__attribute__((used)) static int decavcodecaInit( hb_work_object_t * w, hb_job_t * job )
{
    AVCodec * codec;

    hb_work_private_t * pv = calloc( 1, sizeof( hb_work_private_t ) );
    w->private_data = pv;

    pv->job = job;
    pv->audio = w->audio;
    pv->drop_samples = w->audio->config.in.encoder_delay;
    pv->next_pts = (int64_t)AV_NOPTS_VALUE;
    if (job)
        pv->title = job->title;
    else
        pv->title = w->title;
    hb_buffer_list_clear(&pv->list);

    codec = avcodec_find_decoder(w->codec_param);
    pv->context = avcodec_alloc_context3(codec);

    if (pv->title->opaque_priv != ((void*)0))
    {
        AVFormatContext *ic = (AVFormatContext*)pv->title->opaque_priv;
        avcodec_parameters_to_context(pv->context,
                                      ic->streams[w->audio->id]->codecpar);







        pv->context->codec_id = w->codec_param;
    }
    else
    {
        pv->parser = av_parser_init(w->codec_param);
    }
    hb_ff_set_sample_fmt(pv->context, codec, AV_SAMPLE_FMT_FLT);


    if (!(w->audio->config.out.codec & HB_ACODEC_PASS_FLAG))
    {




        pv->resample =
            hb_audio_resample_init(AV_SAMPLE_FMT_FLT,
                                   w->audio->config.in.samplerate,
                                   w->audio->config.out.mixdown,
                                   w->audio->config.out.normalize_mix_level);
        if (pv->resample == ((void*)0))
        {
            hb_error("decavcodecaInit: hb_audio_resample_init() failed");
            return 1;
        }







        int avcodec_downmix = 0;
        switch (w->codec_param)
        {
            case 133:
            case 131:
                avcodec_downmix = w->audio->config.out.normalize_mix_level != 0;
                break;
            case 132:
                avcodec_downmix = w->audio->config.out.normalize_mix_level == 0;
                break;
            case 130:
                avcodec_downmix = (w->audio->config.out.normalize_mix_level == 0 ||
                                   w->audio->config.out.mixdown == HB_AMIXDOWN_MONO ||
                                   w->audio->config.out.mixdown == 129 ||
                                   w->audio->config.out.mixdown == 128);
                break;
            default:
                break;
        }
        if (avcodec_downmix)
        {
            switch (w->audio->config.out.mixdown)
            {

                case 129:
                case 128:
                    pv->context->request_channel_layout = AV_CH_LAYOUT_5POINT1;
                    break;

                default:
                    pv->context->request_channel_layout =
                        hb_ff_mixdown_xlat(w->audio->config.out.mixdown, ((void*)0));
                    break;
            }
        }
    }



    if (w->codec_param == 130 &&
        w->audio->config.in.channel_layout == AV_CH_LAYOUT_MONO)
    {
        pv->context->request_channel_layout = AV_CH_LAYOUT_STEREO;
    }


    AVDictionary * av_opts = ((void*)0);
    av_dict_set( &av_opts, "refcounted_frames", "1", 0 );


    if (w->audio->config.out.dynamic_range_compression >= 0.0f &&
        hb_audio_can_apply_drc(w->audio->config.in.codec,
                               w->audio->config.in.codec_param, 0))
    {
        float drc_scale_max = 1.0f;





        if (codec != ((void*)0) && codec->priv_class != ((void*)0))
        {
            const AVOption *opt;
            opt = av_opt_find2((void*)&codec->priv_class, "drc_scale", ((void*)0),
                               AV_OPT_FLAG_DECODING_PARAM|AV_OPT_FLAG_AUDIO_PARAM,
                               AV_OPT_SEARCH_FAKE_OBJ, ((void*)0));
            if (opt != ((void*)0))
            {
                drc_scale_max = opt->max;
            }
        }
        if (w->audio->config.out.dynamic_range_compression > drc_scale_max)
        {
            hb_log("decavcodecaInit: track %d, sanitizing out-of-range DRC %.2f to %.2f",
                   w->audio->config.out.track,
                   w->audio->config.out.dynamic_range_compression, drc_scale_max);
            w->audio->config.out.dynamic_range_compression = drc_scale_max;
        }

        char drc_scale[5];
        snprintf(drc_scale, sizeof(drc_scale), "%.2f",
                 w->audio->config.out.dynamic_range_compression);
        av_dict_set(&av_opts, "drc_scale", drc_scale, 0);
    }

    if (hb_avcodec_open(pv->context, codec, &av_opts, 0))
    {
        av_dict_free( &av_opts );
        hb_log("decavcodecaInit: avcodec_open failed");
        return 1;
    }
    pv->context->pkt_timebase.num = pv->audio->config.in.timebase.num;
    pv->context->pkt_timebase.den = pv->audio->config.in.timebase.den;


    AVDictionaryEntry *t = ((void*)0);
    while ((t = av_dict_get(av_opts, "", t, AV_DICT_IGNORE_SUFFIX)) != ((void*)0))
    {
            hb_log("decavcodecaInit: unknown option '%s'", t->key);
    }
    av_dict_free( &av_opts );

    pv->frame = av_frame_alloc();
    if (pv->frame == ((void*)0))
    {
        hb_log("decavcodecaInit: av_frame_alloc failed");
        return 1;
    }

    return 0;
}
