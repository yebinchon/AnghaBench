
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int * jstring ;
typedef int jboolean ;
struct TYPE_14__ {int get_float_id; int contains_key_id; } ;
struct TYPE_16__ {TYPE_1__ jfields; int object; } ;
struct TYPE_15__ {float (* CallFloatMethod ) (TYPE_2__**,int ,int ,int *) ;int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int (* CallBooleanMethod ) (TYPE_2__**,int ,int ,int *) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;


 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int ) ;
 int av_assert0 (int ) ;
 int ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int * ff_jni_utf_chars_to_jstring (TYPE_2__**,char const*,TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ,int ,int *) ;
 float stub2 (TYPE_2__**,int ,int ,int *) ;
 int stub3 (TYPE_2__**,int *) ;

int ff_AMediaFormat_getFloat(FFAMediaFormat* format, const char *name, float *out)
{
    int ret = 1;

    JNIEnv *env = ((void*)0);
    jstring key = ((void*)0);
    jboolean contains_key;

    av_assert0(format != ((void*)0));

    JNI_GET_ENV_OR_RETURN(env, format, 0);

    key = ff_jni_utf_chars_to_jstring(env, name, format);
    if (!key) {
        ret = 0;
        goto fail;
    }

    contains_key = (*env)->CallBooleanMethod(env, format->object, format->jfields.contains_key_id, key);
    if (!contains_key || (ret = ff_jni_exception_check(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    *out = (*env)->CallFloatMethod(env, format->object, format->jfields.get_float_id, key);
    if ((ret = ff_jni_exception_check(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    ret = 1;
fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    return ret;
}
