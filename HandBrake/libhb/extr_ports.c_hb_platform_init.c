
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 int hb_error (char*) ;
 int init_cpu_info () ;
 int pthread_win32_process_attach_np () ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;

int hb_platform_init()
{
    int result = 0;
    init_cpu_info();

    return result;
}
