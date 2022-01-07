
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_env ;
 int jni_detach_env ;
 int pthread_key_create (int *,int ) ;

__attribute__((used)) static void jni_create_pthread_key(void)
{
    pthread_key_create(&current_env, jni_detach_env);
}
