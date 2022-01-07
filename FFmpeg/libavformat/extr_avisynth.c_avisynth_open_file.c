
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_11__ {int (* avs_get_version ) (int ) ;int (* avs_release_value ) (int ) ;int (* avs_get_video_info ) (int ) ;int (* avs_take_clip ) (int ,int ) ;int (* avs_invoke ) (int ,char*,int ,int ) ;} ;
struct TYPE_10__ {char* filename; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int clip; int vi; int env; } ;
typedef TYPE_1__ AviSynthContext ;
typedef int AVS_Value ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int CP_THREAD_ACP ;
 int CP_UTF8 ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int avisynth_context_create (TYPE_2__*) ;
 int avisynth_context_destroy (TYPE_1__*) ;
 int avisynth_create_stream (TYPE_2__*) ;
 int avs_as_error (int ) ;
 int avs_is_clip (int ) ;
 scalar_t__ avs_is_error (int ) ;
 TYPE_3__ avs_library ;
 int avs_new_value_string (char*) ;
 int stub1 (int ,char*,int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;

__attribute__((used)) static int avisynth_open_file(AVFormatContext *s)
{
    AviSynthContext *avs = s->priv_data;
    AVS_Value arg, val;
    int ret;





    if (ret = avisynth_context_create(s))
        return ret;
    arg = avs_new_value_string(s->filename);

    val = avs_library.avs_invoke(avs->env, "Import", arg, 0);
    if (avs_is_error(val)) {
        av_log(s, AV_LOG_ERROR, "%s\n", avs_as_error(val));
        ret = AVERROR_UNKNOWN;
        goto fail;
    }
    if (!avs_is_clip(val)) {
        av_log(s, AV_LOG_ERROR, "AviSynth script did not return a clip\n");
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    avs->clip = avs_library.avs_take_clip(val, avs->env);
    avs->vi = avs_library.avs_get_video_info(avs->clip);
    avs_library.avs_release_value(val);

    if (ret = avisynth_create_stream(s))
        goto fail;

    return 0;

fail:
    avisynth_context_destroy(avs);
    return ret;
}
