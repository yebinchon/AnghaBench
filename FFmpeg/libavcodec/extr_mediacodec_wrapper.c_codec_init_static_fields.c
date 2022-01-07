
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int info_output_format_changed_id; int mediacodec_class; int info_output_buffers_changed_id; int info_try_again_later_id; int configure_flag_encode_id; int buffer_flag_key_frame_id; int buffer_flag_end_of_stream_id; int buffer_flag_codec_config_id; } ;
struct TYPE_19__ {TYPE_1__ jfields; int INFO_OUTPUT_FORMAT_CHANGED; int INFO_OUTPUT_BUFFERS_CHANGED; int INFO_TRY_AGAIN_LATER; int CONFIGURE_FLAG_ENCODE; int BUFFER_FLAG_KEY_FRAME; int BUFFER_FLAG_END_OF_STREAM; int BUFFER_FLAG_CODEC_CONFIG; } ;
struct TYPE_18__ {int (* GetStaticIntField ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int ) ;
 int ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ,int ) ;
 int stub2 (TYPE_2__**,int ,int ) ;
 int stub3 (TYPE_2__**,int ,int ) ;
 int stub4 (TYPE_2__**,int ,int ) ;
 int stub5 (TYPE_2__**,int ,int ) ;
 int stub6 (TYPE_2__**,int ,int ) ;
 int stub7 (TYPE_2__**,int ,int ) ;
 int stub8 (TYPE_2__**,int ,int ) ;

__attribute__((used)) static int codec_init_static_fields(FFAMediaCodec *codec)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    codec->INFO_TRY_AGAIN_LATER = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.info_try_again_later_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    codec->BUFFER_FLAG_CODEC_CONFIG = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.buffer_flag_codec_config_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    codec->BUFFER_FLAG_END_OF_STREAM = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.buffer_flag_end_of_stream_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    if (codec->jfields.buffer_flag_key_frame_id) {
        codec->BUFFER_FLAG_KEY_FRAME = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.buffer_flag_key_frame_id);
        if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
            goto fail;
        }
    }

    codec->CONFIGURE_FLAG_ENCODE = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.configure_flag_encode_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    codec->INFO_TRY_AGAIN_LATER = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.info_try_again_later_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    codec->INFO_OUTPUT_BUFFERS_CHANGED = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.info_output_buffers_changed_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

    codec->INFO_OUTPUT_FORMAT_CHANGED = (*env)->GetStaticIntField(env, codec->jfields.mediacodec_class, codec->jfields.info_output_format_changed_id);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        goto fail;
    }

fail:

    return ret;
}
