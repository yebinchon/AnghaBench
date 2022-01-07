
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_13__ {int get_name_id; } ;
struct TYPE_15__ {TYPE_1__ jfields; int object; } ;
struct TYPE_14__ {int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int * (* CallObjectMethod ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ FFAMediaCodec ;


 int JNI_GET_ENV_OR_RETURN (TYPE_2__**,TYPE_3__*,int *) ;
 scalar_t__ ff_jni_exception_check (TYPE_2__**,int,TYPE_3__*) ;
 char* ff_jni_jstring_to_utf_chars (TYPE_2__**,int *,TYPE_3__*) ;
 int * stub1 (TYPE_2__**,int ,int ) ;
 int stub2 (TYPE_2__**,int *) ;

char *ff_AMediaCodec_getName(FFAMediaCodec *codec)
{
    char *ret = ((void*)0);
    JNIEnv *env = ((void*)0);
    jobject *name = ((void*)0);

    JNI_GET_ENV_OR_RETURN(env, codec, ((void*)0));

    name = (*env)->CallObjectMethod(env, codec->object, codec->jfields.get_name_id);
    if (ff_jni_exception_check(env, 1, codec) < 0) {
        goto fail;
    }

    ret = ff_jni_jstring_to_utf_chars(env, name, codec);

fail:
    if (name) {
        (*env)->DeleteLocalRef(env, name);
    }

    return ret;
}
