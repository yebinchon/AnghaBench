
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_15__ ;


typedef int * jstring ;
typedef int * jobject ;
typedef int * jmethodID ;
struct TYPE_28__ {int init_id; int mediainfo_class; scalar_t__ get_output_buffer_id; scalar_t__ get_input_buffer_id; int mediacodec_class; int * create_encoder_by_type_id; int * create_decoder_by_type_id; int * create_by_codec_name_id; } ;
struct TYPE_30__ {int has_get_i_o_buffer; TYPE_15__ jfields; scalar_t__ buffer_info; scalar_t__ object; int * class; } ;
struct TYPE_29__ {int (* DeleteGlobalRef ) (TYPE_1__**,scalar_t__) ;int (* DeleteLocalRef ) (TYPE_1__**,int *) ;scalar_t__ (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* NewObject ) (TYPE_1__**,int ,int ) ;int * (* CallStaticObjectMethod ) (TYPE_1__**,int ,int *,int *) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaCodec ;





 int amediacodec_class ;
 int av_assert0 (int ) ;
 int av_freep (TYPE_2__**) ;
 TYPE_2__* av_mallocz (int) ;
 scalar_t__ codec_init_static_fields (TYPE_2__*) ;
 scalar_t__ ff_jni_exception_check (TYPE_1__**,int,TYPE_2__*) ;
 TYPE_1__** ff_jni_get_env (TYPE_2__*) ;
 scalar_t__ ff_jni_init_jfields (TYPE_1__**,TYPE_15__*,int ,int,TYPE_2__*) ;
 int ff_jni_reset_jfields (TYPE_1__**,TYPE_15__*,int ,int,TYPE_2__*) ;
 int * ff_jni_utf_chars_to_jstring (TYPE_1__**,char const*,TYPE_2__*) ;
 int jni_amediacodec_mapping ;
 int * stub1 (TYPE_1__**,int ,int *,int *) ;
 scalar_t__ stub2 (TYPE_1__**,int *) ;
 int * stub3 (TYPE_1__**,int ,int ) ;
 scalar_t__ stub4 (TYPE_1__**,int *) ;
 int stub5 (TYPE_1__**,int *) ;
 int stub6 (TYPE_1__**,int *) ;
 int stub7 (TYPE_1__**,int *) ;
 int stub8 (TYPE_1__**,scalar_t__) ;
 int stub9 (TYPE_1__**,scalar_t__) ;

__attribute__((used)) static inline FFAMediaCodec *codec_create(int method, const char *arg)
{
    int ret = -1;
    JNIEnv *env = ((void*)0);
    FFAMediaCodec *codec = ((void*)0);
    jstring jarg = ((void*)0);
    jobject object = ((void*)0);
    jobject buffer_info = ((void*)0);
    jmethodID create_id = ((void*)0);

    codec = av_mallocz(sizeof(FFAMediaCodec));
    if (!codec) {
        return ((void*)0);
    }
    codec->class = &amediacodec_class;

    env = ff_jni_get_env(codec);
    if (!env) {
        av_freep(&codec);
        return ((void*)0);
    }

    if (ff_jni_init_jfields(env, &codec->jfields, jni_amediacodec_mapping, 1, codec) < 0) {
        goto fail;
    }

    jarg = ff_jni_utf_chars_to_jstring(env, arg, codec);
    if (!jarg) {
        goto fail;
    }

    switch (method) {
    case 130: create_id = codec->jfields.create_by_codec_name_id; break;
    case 129: create_id = codec->jfields.create_decoder_by_type_id; break;
    case 128: create_id = codec->jfields.create_encoder_by_type_id; break;
    default:
        av_assert0(0);
    }

    object = (*env)->CallStaticObjectMethod(env,
                                            codec->jfields.mediacodec_class,
                                            create_id,
                                            jarg);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        goto fail;
    }

    codec->object = (*env)->NewGlobalRef(env, object);
    if (!codec->object) {
        goto fail;
    }

    if (codec_init_static_fields(codec) < 0) {
        goto fail;
    }

    if (codec->jfields.get_input_buffer_id && codec->jfields.get_output_buffer_id) {
        codec->has_get_i_o_buffer = 1;
    }

    buffer_info = (*env)->NewObject(env, codec->jfields.mediainfo_class, codec->jfields.init_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        goto fail;
    }

    codec->buffer_info = (*env)->NewGlobalRef(env, buffer_info);
    if (!codec->buffer_info) {
        goto fail;
    }

    ret = 0;
fail:
    if (jarg) {
        (*env)->DeleteLocalRef(env, jarg);
    }

    if (object) {
        (*env)->DeleteLocalRef(env, object);
    }

    if (buffer_info) {
        (*env)->DeleteLocalRef(env, buffer_info);
    }

    if (ret < 0) {
        if (codec->object) {
            (*env)->DeleteGlobalRef(env, codec->object);
        }

        if (codec->buffer_info) {
            (*env)->DeleteGlobalRef(env, codec->buffer_info);
        }

        ff_jni_reset_jfields(env, &codec->jfields, jni_amediacodec_mapping, 1, codec);
        av_freep(&codec);
    }

    return codec;
}
