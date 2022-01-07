
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ off_t ;
typedef int jint ;
struct TYPE_10__ {int queue_input_buffer_id; } ;
struct TYPE_12__ {TYPE_1__ jfields; int object; } ;
struct TYPE_11__ {int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int) ;
 int ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ) ;

int ff_AMediaCodec_queueInputBuffer(FFAMediaCodec* codec, size_t idx, off_t offset, size_t size, uint64_t time, uint32_t flags)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    (*env)->CallVoidMethod(env, codec->object, codec->jfields.queue_input_buffer_id, (jint)idx, (jint)offset, (jint)size, time, flags);
    if ((ret = ff_jni_exception_check(env, 1, codec)) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

fail:
    return ret;
}
