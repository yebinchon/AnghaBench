
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int * jstring ;
struct TYPE_14__ {int set_string_id; } ;
struct TYPE_16__ {TYPE_1__ jfields; int object; } ;
struct TYPE_15__ {int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int *,int *) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;


 int JNI_GET_ENV_OR_RETURN_VOID (TYPE_2__**,TYPE_3__*) ;
 int av_assert0 (int ) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 int * ff_jni_utf_chars_to_jstring (TYPE_2__**,char const*,TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ,int ,int *,int *) ;
 int stub2 (TYPE_2__**,int *) ;
 int stub3 (TYPE_2__**,int *) ;

void ff_AMediaFormat_setString(FFAMediaFormat* format, const char* name, const char* value)
{
    JNIEnv *env = ((void*)0);
    jstring key = ((void*)0);
    jstring string = ((void*)0);

    av_assert0(format != ((void*)0));

    JNI_GET_ENV_OR_RETURN_VOID(env, format);

    key = ff_jni_utf_chars_to_jstring(env, name, format);
    if (!key) {
        goto fail;
    }

    string = ff_jni_utf_chars_to_jstring(env, value, format);
    if (!string) {
        goto fail;
    }

    (*env)->CallVoidMethod(env, format->object, format->jfields.set_string_id, key, string);
    if (ff_jni_exception_check(env, 1, format) < 0) {
        goto fail;
    }

fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    if (string) {
        (*env)->DeleteLocalRef(env, string);
    }
}
