
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jint ;
struct TYPE_5__ {scalar_t__ (* GetEnv ) (TYPE_1__**,void**,int) ;} ;
typedef TYPE_1__* JavaVM ;
typedef int JNIEnv ;


 int DEBUG_CALLBACK ;
 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 int LogChangeOutput (int ,char*) ;
 int LogStart () ;
 scalar_t__ log_callback ;
 scalar_t__ stub1 (TYPE_1__**,void**,int) ;
 TYPE_1__** yvm ;

jint JNI_OnLoad(JavaVM * vm, void * reserved)
{
    JNIEnv * env;
    if ((*vm)->GetEnv(vm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
        return -1;

    yvm = vm;

    LogStart();
    LogChangeOutput(DEBUG_CALLBACK, (char *) log_callback);

    return JNI_VERSION_1_6;
}
