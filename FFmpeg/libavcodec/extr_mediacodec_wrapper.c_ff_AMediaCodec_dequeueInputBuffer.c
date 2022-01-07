
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_10__ {int dequeue_input_buffer_id; } ;
struct TYPE_12__ {TYPE_1__ jfields; int object; } ;
struct TYPE_11__ {int (* CallIntMethod ) (TYPE_2__**,int ,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ,int ,int ) ;

ssize_t ff_AMediaCodec_dequeueInputBuffer(FFAMediaCodec* codec, int64_t timeoutUs)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    ret = (*env)->CallIntMethod(env, codec->object, codec->jfields.dequeue_input_buffer_id, timeoutUs);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

fail:
    return ret;
}
