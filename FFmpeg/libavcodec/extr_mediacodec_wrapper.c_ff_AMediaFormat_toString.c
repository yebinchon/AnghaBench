
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int * jstring ;
struct TYPE_12__ {int to_string_id; } ;
struct TYPE_14__ {TYPE_1__ jfields; int object; } ;
struct TYPE_13__ {int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int * (* CallObjectMethod ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaFormat ;


 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int *) ;
 int av_assert0 (int ) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,int *) ;
 char* ff_jni_jstring_to_utf_chars (TYPE_2__**,int *,TYPE_3__*) ;
 int * stub1 (TYPE_2__**,int ,int ) ;
 int stub2 (TYPE_2__**,int *) ;

char* ff_AMediaFormat_toString(FFAMediaFormat* format)
{
    char *ret = ((void*)0);

    JNIEnv *env = ((void*)0);
    jstring description = ((void*)0);

    av_assert0(format != ((void*)0));

    JNI_GET_ENV_OR_RETURN(env, format, ((void*)0));

    description = (*env)->CallObjectMethod(env, format->object, format->jfields.to_string_id);
    if (ff_jni_exception_check(env, 1, ((void*)0)) < 0) {
        goto fail;
    }

    ret = ff_jni_jstring_to_utf_chars(env, description, format);
fail:
    if (description) {
        (*env)->DeleteLocalRef(env, description);
    }

    return ret;
}
