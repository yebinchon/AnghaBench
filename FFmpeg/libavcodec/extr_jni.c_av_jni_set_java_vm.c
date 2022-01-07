
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int ENOSYS ;

int av_jni_set_java_vm(void *vm, void *log_ctx)
{
    return AVERROR(ENOSYS);
}
