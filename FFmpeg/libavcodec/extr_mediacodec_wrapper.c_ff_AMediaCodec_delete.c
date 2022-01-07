
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int release_id; } ;
struct TYPE_16__ {TYPE_7__ jfields; int * buffer_info; int * object; } ;
struct TYPE_15__ {int (* DeleteGlobalRef ) (TYPE_1__**,int *) ;int (* CallVoidMethod ) (TYPE_1__**,int *,int ) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_1__**,TYPE_2__*,int) ;
 int av_freep (TYPE_2__**) ;
 scalar_t__ ff_jni_exception_check (TYPE_1__**,int,TYPE_2__*) ;
 int ff_jni_reset_jfields (TYPE_1__**,TYPE_7__*,int ,int,TYPE_2__*) ;
 int jni_amediacodec_mapping ;
 int stub1 (TYPE_1__**,int *,int ) ;
 int stub2 (TYPE_1__**,int *) ;
 int stub3 (TYPE_1__**,int *) ;

int ff_AMediaCodec_delete(FFAMediaCodec* codec)
{
    int ret = 0;

    JNIEnv *env = ((void*)0);

    if (!codec) {
        return 0;
    }

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    (*env)->CallVoidMethod(env, codec->object, codec->jfields.release_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        ret = AVERROR_EXTERNAL;
    }

    (*env)->DeleteGlobalRef(env, codec->object);
    codec->object = ((void*)0);

    (*env)->DeleteGlobalRef(env, codec->buffer_info);
    codec->buffer_info = ((void*)0);

    ff_jni_reset_jfields(env, &codec->jfields, jni_amediacodec_mapping, 1, codec);

    av_freep(&codec);

    return ret;
}
