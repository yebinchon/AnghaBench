
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int * jstring ;
typedef int * jobject ;
struct TYPE_15__ {int set_bytebuffer_id; } ;
struct TYPE_17__ {TYPE_1__ jfields; int object; } ;
struct TYPE_16__ {int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int *,int *) ;int * (* NewDirectByteBuffer ) (TYPE_2__**,void*,size_t) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;


 int JNI_GET_ENV_OR_RETURN_VOID (TYPE_2__**,TYPE_3__*) ;
 int av_assert0 (int ) ;
 void* av_malloc (size_t) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int * ff_jni_utf_chars_to_jstring (TYPE_2__**,char const*,TYPE_3__*) ;
 int memcpy (void*,void*,size_t) ;
 int * stub1 (TYPE_2__**,void*,size_t) ;
 int stub2 (TYPE_2__**,int ,int ,int *,int *) ;
 int stub3 (TYPE_2__**,int *) ;
 int stub4 (TYPE_2__**,int *) ;

void ff_AMediaFormat_setBuffer(FFAMediaFormat* format, const char* name, void* data, size_t size)
{
    JNIEnv *env = ((void*)0);
    jstring key = ((void*)0);
    jobject buffer = ((void*)0);
    void *buffer_data = ((void*)0);

    av_assert0(format != ((void*)0));

    JNI_GET_ENV_OR_RETURN_VOID(env, format);

    key = ff_jni_utf_chars_to_jstring(env, name, format);
    if (!key) {
        goto fail;
    }

    if (!data || !size) {
        goto fail;
    }

    buffer_data = av_malloc(size);
    if (!buffer_data) {
        goto fail;
    }

    memcpy(buffer_data, data, size);

    buffer = (*env)->NewDirectByteBuffer(env, buffer_data, size);
    if (!buffer) {
        goto fail;
    }

    (*env)->CallVoidMethod(env, format->object, format->jfields.set_bytebuffer_id, key, buffer);
    if (ff_jni_exception_check(env, 1, format) < 0) {
        goto fail;
    }

fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    if (buffer) {
        (*env)->DeleteLocalRef(env, buffer);
    }
}
