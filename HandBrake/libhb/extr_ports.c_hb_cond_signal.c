
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_6__ {int thread; int cond; } ;
typedef TYPE_2__ hb_cond_t ;


 scalar_t__ B_THREAD_SUSPENDED ;
 int get_thread_info (int,TYPE_1__*) ;
 int pthread_cond_signal (int *) ;
 int resume_thread (int) ;
 int snooze (int) ;

void hb_cond_signal( hb_cond_t * c )
{
}
