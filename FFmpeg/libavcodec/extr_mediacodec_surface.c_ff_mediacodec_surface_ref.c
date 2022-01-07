
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* NewGlobalRef ) (TYPE_1__**,void*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef int FFANativeWindow ;


 TYPE_1__** ff_jni_get_env (void*) ;
 int * stub1 (TYPE_1__**,void*) ;

FFANativeWindow *ff_mediacodec_surface_ref(void *surface, void *log_ctx)
{
    JNIEnv *env = ((void*)0);

    env = ff_jni_get_env(log_ctx);
    if (!env) {
        return ((void*)0);
    }

    return (*env)->NewGlobalRef(env, surface);
}
