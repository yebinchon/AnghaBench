
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_get_cpu_flags () ;

__attribute__((used)) static void *thread_main(void *arg)
{
    int *flags = arg;

    *flags = av_get_cpu_flags();
    return ((void*)0);
}
