
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int jfields; int * object; } ;
struct TYPE_10__ {int (* DeleteGlobalRef ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaFormat ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_1__**,TYPE_2__*,int ) ;
 int av_freep (TYPE_2__**) ;
 int ff_jni_reset_jfields (TYPE_1__**,int *,int ,int,TYPE_2__*) ;
 int jni_amediaformat_mapping ;
 int stub1 (TYPE_1__**,int *) ;

int ff_AMediaFormat_delete(FFAMediaFormat* format)
{
    int ret = 0;

    JNIEnv *env = ((void*)0);

    if (!format) {
        return 0;
    }

    JNI_GET_ENV_OR_RETURN(env, format, AVERROR_EXTERNAL);

    (*env)->DeleteGlobalRef(env, format->object);
    format->object = ((void*)0);

    ff_jni_reset_jfields(env, &format->jfields, jni_amediaformat_mapping, 1, format);

    av_freep(&format);

    return ret;
}
