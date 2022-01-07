
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* DeleteGlobalRef ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef int FFANativeWindow ;


 int AVERROR_EXTERNAL ;
 TYPE_1__** ff_jni_get_env (void*) ;
 int stub1 (TYPE_1__**,int *) ;

int ff_mediacodec_surface_unref(FFANativeWindow *window, void *log_ctx)
{
    JNIEnv *env = ((void*)0);

    env = ff_jni_get_env(log_ctx);
    if (!env) {
        return AVERROR_EXTERNAL;
    }

    (*env)->DeleteGlobalRef(env, window);

    return 0;
}
