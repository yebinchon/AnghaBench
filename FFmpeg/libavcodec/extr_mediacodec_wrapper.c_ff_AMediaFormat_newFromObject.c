
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int jfields; int object; int * class; } ;
struct TYPE_13__ {int (* NewGlobalRef ) (TYPE_1__**,void*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaFormat ;


 int amediaformat_class ;
 int av_freep (TYPE_2__**) ;
 TYPE_2__* av_mallocz (int) ;
 TYPE_1__** ff_jni_get_env (TYPE_2__*) ;
 scalar_t__ ff_jni_init_jfields (TYPE_1__**,int *,int ,int,TYPE_2__*) ;
 int ff_jni_reset_jfields (TYPE_1__**,int *,int ,int,TYPE_2__*) ;
 int jni_amediaformat_mapping ;
 int stub1 (TYPE_1__**,void*) ;

__attribute__((used)) static FFAMediaFormat *ff_AMediaFormat_newFromObject(void *object)
{
    JNIEnv *env = ((void*)0);
    FFAMediaFormat *format = ((void*)0);

    format = av_mallocz(sizeof(FFAMediaFormat));
    if (!format) {
        return ((void*)0);
    }
    format->class = &amediaformat_class;

    env = ff_jni_get_env(format);
    if (!env) {
        av_freep(&format);
        return ((void*)0);
    }

    if (ff_jni_init_jfields(env, &format->jfields, jni_amediaformat_mapping, 1, format) < 0) {
        goto fail;
    }

    format->object = (*env)->NewGlobalRef(env, object);
    if (!format->object) {
        goto fail;
    }

    return format;
fail:
    ff_jni_reset_jfields(env, &format->jfields, jni_amediaformat_mapping, 1, format);

    av_freep(&format);

    return ((void*)0);
}
