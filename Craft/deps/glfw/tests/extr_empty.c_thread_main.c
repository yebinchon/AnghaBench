
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int glfwPostEmptyEvent () ;
 scalar_t__ running ;
 int thrd_sleep (struct timespec*,int *) ;

__attribute__((used)) static int thread_main(void* data)
{
    struct timespec time;

    while (running)
    {
        clock_gettime(CLOCK_REALTIME, &time);
        time.tv_sec += 1;
        thrd_sleep(&time, ((void*)0));

        glfwPostEmptyEvent();
    }

    return 0;
}
