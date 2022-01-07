
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* GetEnv ) (TYPE_1__**,void**,int ) ;int (* AttachCurrentThread ) (TYPE_1__**,int **,int *) ;} ;
typedef int JNIEnv ;


 int AV_LOG_ERROR ;



 int JNI_VERSION_1_6 ;
 TYPE_1__** av_jni_get_java_vm (void*) ;
 int av_log (void*,int ,char*) ;
 int current_env ;
 TYPE_1__** java_vm ;
 int jni_create_pthread_key ;
 int lock ;
 int once ;
 int * pthread_getspecific (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_once (int *,int ) ;
 int pthread_setspecific (int ,int *) ;
 int stub1 (TYPE_1__**,void**,int ) ;
 int stub2 (TYPE_1__**,int **,int *) ;

JNIEnv *ff_jni_get_env(void *log_ctx)
{
    int ret = 0;
    JNIEnv *env = ((void*)0);

    pthread_mutex_lock(&lock);
    if (java_vm == ((void*)0)) {
        java_vm = av_jni_get_java_vm(log_ctx);
    }

    if (!java_vm) {
        av_log(log_ctx, AV_LOG_ERROR, "No Java virtual machine has been registered\n");
        goto done;
    }

    pthread_once(&once, jni_create_pthread_key);

    if ((env = pthread_getspecific(current_env)) != ((void*)0)) {
        goto done;
    }

    ret = (*java_vm)->GetEnv(java_vm, (void **)&env, JNI_VERSION_1_6);
    switch(ret) {
    case 130:
        if ((*java_vm)->AttachCurrentThread(java_vm, &env, ((void*)0)) != 0) {
            av_log(log_ctx, AV_LOG_ERROR, "Failed to attach the JNI environment to the current thread\n");
            env = ((void*)0);
        } else {
            pthread_setspecific(current_env, env);
        }
        break;
    case 128:
        break;
    case 129:
        av_log(log_ctx, AV_LOG_ERROR, "The specified JNI version is not supported\n");
        break;
    default:
        av_log(log_ctx, AV_LOG_ERROR, "Failed to get the JNI environment attached to this thread\n");
        break;
    }

done:
    pthread_mutex_unlock(&lock);
    return env;
}
