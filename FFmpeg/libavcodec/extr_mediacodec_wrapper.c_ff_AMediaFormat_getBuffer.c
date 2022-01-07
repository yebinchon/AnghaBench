
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int * jstring ;
typedef int * jobject ;
typedef int jboolean ;
struct TYPE_17__ {int get_bytebuffer_id; int contains_key_id; } ;
struct TYPE_19__ {TYPE_1__ jfields; int object; } ;
struct TYPE_18__ {size_t (* GetDirectBufferCapacity ) (TYPE_2__**,int *) ;int (* DeleteLocalRef ) (TYPE_2__**,int *) ;void* (* GetDirectBufferAddress ) (TYPE_2__**,int *) ;int * (* CallObjectMethod ) (TYPE_2__**,int ,int ,int *) ;int (* CallBooleanMethod ) (TYPE_2__**,int ,int ,int *) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;


 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int ) ;
 int av_assert0 (int ) ;
 void* av_malloc (size_t) ;
 int ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int * ff_jni_utf_chars_to_jstring (TYPE_2__**,char const*,TYPE_3__*) ;
 int memcpy (void*,void*,size_t) ;
 int stub1 (TYPE_2__**,int ,int ,int *) ;
 int * stub2 (TYPE_2__**,int ,int ,int *) ;
 void* stub3 (TYPE_2__**,int *) ;
 size_t stub4 (TYPE_2__**,int *) ;
 int stub5 (TYPE_2__**,int *) ;
 int stub6 (TYPE_2__**,int *) ;

int ff_AMediaFormat_getBuffer(FFAMediaFormat* format, const char *name, void** data, size_t *size)
{
    int ret = 1;

    JNIEnv *env = ((void*)0);
    jstring key = ((void*)0);
    jboolean contains_key;
    jobject result = ((void*)0);

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

    result = (*env)->CallObjectMethod(env, format->object, format->jfields.get_bytebuffer_id, key);
    if ((ret = ff_jni_exception_check(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    *data = (*env)->GetDirectBufferAddress(env, result);
    *size = (*env)->GetDirectBufferCapacity(env, result);

    if (*data && *size) {
        void *src = *data;
        *data = av_malloc(*size);
        if (!*data) {
            ret = 0;
            goto fail;
        }

        memcpy(*data, src, *size);
    }

    ret = 1;
fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    if (result) {
        (*env)->DeleteLocalRef(env, result);
    }

    return ret;
}
