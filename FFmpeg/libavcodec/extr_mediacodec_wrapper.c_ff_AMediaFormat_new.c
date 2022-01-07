
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_19__ {int init_id; int mediaformat_class; } ;
struct TYPE_18__ {TYPE_7__ jfields; int object; int * class; } ;
struct TYPE_17__ {int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* NewObject ) (TYPE_1__**,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaFormat ;


 int amediaformat_class ;
 int av_freep (TYPE_2__**) ;
 TYPE_2__* av_mallocz (int) ;
 TYPE_1__** ff_jni_get_env (TYPE_2__*) ;
 scalar_t__ ff_jni_init_jfields (TYPE_1__**,TYPE_7__*,int ,int,TYPE_2__*) ;
 int ff_jni_reset_jfields (TYPE_1__**,TYPE_7__*,int ,int,TYPE_2__*) ;
 int jni_amediaformat_mapping ;
 int * stub1 (TYPE_1__**,int ,int ) ;
 int stub2 (TYPE_1__**,int *) ;
 int stub3 (TYPE_1__**,int *) ;

FFAMediaFormat *ff_AMediaFormat_new(void)
{
    JNIEnv *env = ((void*)0);
    FFAMediaFormat *format = ((void*)0);
    jobject object = ((void*)0);

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

    object = (*env)->NewObject(env, format->jfields.mediaformat_class, format->jfields.init_id);
    if (!object) {
        goto fail;
    }

    format->object = (*env)->NewGlobalRef(env, object);
    if (!format->object) {
        goto fail;
    }

fail:
    if (object) {
        (*env)->DeleteLocalRef(env, object);
    }

    if (!format->object) {
        ff_jni_reset_jfields(env, &format->jfields, jni_amediaformat_mapping, 1, format);
        av_freep(&format);
    }

    return format;
}
