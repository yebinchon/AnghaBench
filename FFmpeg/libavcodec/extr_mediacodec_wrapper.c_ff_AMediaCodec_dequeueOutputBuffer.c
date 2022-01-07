
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_16__ {int size_id; int presentation_time_us_id; int offset_id; int flags_id; int dequeue_output_buffer_id; } ;
struct TYPE_19__ {TYPE_1__ jfields; int buffer_info; int object; } ;
struct TYPE_18__ {int size; int presentationTimeUs; int offset; int flags; } ;
struct TYPE_17__ {int (* CallIntMethod ) (TYPE_2__**,int ,int ,int ,int ) ;int (* GetIntField ) (TYPE_2__**,int ,int ) ;int (* GetLongField ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaCodecBufferInfo ;
typedef TYPE_4__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_4__*,int) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_4__*) ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ) ;
 int stub2 (TYPE_2__**,int ,int ) ;
 int stub3 (TYPE_2__**,int ,int ) ;
 int stub4 (TYPE_2__**,int ,int ) ;
 int stub5 (TYPE_2__**,int ,int ) ;

ssize_t ff_AMediaCodec_dequeueOutputBuffer(FFAMediaCodec* codec, FFAMediaCodecBufferInfo *info, int64_t timeoutUs)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    ret = (*env)->CallIntMethod(env, codec->object, codec->jfields.dequeue_output_buffer_id, codec->buffer_info, timeoutUs);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        return AVERROR_EXTERNAL;
    }

    info->flags = (*env)->GetIntField(env, codec->buffer_info, codec->jfields.flags_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        return AVERROR_EXTERNAL;
    }

    info->offset = (*env)->GetIntField(env, codec->buffer_info, codec->jfields.offset_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        return AVERROR_EXTERNAL;
    }

    info->presentationTimeUs = (*env)->GetLongField(env, codec->buffer_info, codec->jfields.presentation_time_us_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        return AVERROR_EXTERNAL;
    }

    info->size = (*env)->GetIntField(env, codec->buffer_info, codec->jfields.size_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        return AVERROR_EXTERNAL;
    }

    return ret;
}
