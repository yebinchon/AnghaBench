
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sswt_cb {int timeflag; int * psem; } ;


 int sys_sem_signal (int ) ;

__attribute__((used)) static void
sswt_handler(void *arg)
{
    struct sswt_cb *sswt_cb = (struct sswt_cb *) arg;


    sswt_cb->timeflag = 1;
    sys_sem_signal(*(sswt_cb->psem));
}
