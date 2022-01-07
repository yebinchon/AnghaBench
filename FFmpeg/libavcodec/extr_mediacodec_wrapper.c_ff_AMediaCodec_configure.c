
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int configure_id; } ;
struct TYPE_15__ {TYPE_1__ jfields; int object; } ;
struct TYPE_14__ {int object; } ;
struct TYPE_13__ {int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,void*,int *,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;
typedef TYPE_4__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_4__*,int) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_4__*) ;
 int stub1 (TYPE_2__**,int ,int ,int ,void*,int *,int ) ;

int ff_AMediaCodec_configure(FFAMediaCodec* codec, const FFAMediaFormat* format, void* surface, void *crypto, uint32_t flags)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, AVERROR_EXTERNAL);

    (*env)->CallVoidMethod(env, codec->object, codec->jfields.configure_id, format->object, surface, ((void*)0), flags);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

fail:
    return ret;
}
