
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_11__ {int get_output_format_id; } ;
struct TYPE_13__ {TYPE_1__ jfields; int object; } ;
struct TYPE_12__ {int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int * (* CallObjectMethod ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef int FFAMediaFormat ;
typedef TYPE_3__ FFAMediaCodec ;


 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int *) ;
 int * ff_AMediaFormat_newFromObject (int *) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int * stub1 (TYPE_2__**,int ,int ) ;
 int stub2 (TYPE_2__**,int *) ;

FFAMediaFormat* ff_AMediaCodec_getOutputFormat(FFAMediaCodec* codec)
{
    FFAMediaFormat *ret = ((void*)0);
    JNIEnv *env = ((void*)0);

    jobject mediaformat = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, ((void*)0));

    mediaformat = (*env)->CallObjectMethod(env, codec->object, codec->jfields.get_output_format_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        goto fail;
    }

    ret = ff_AMediaFormat_newFromObject(mediaformat);
fail:
    if (mediaformat) {
        (*env)->DeleteLocalRef(env, mediaformat);
    }

    return ret;
}
