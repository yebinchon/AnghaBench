
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p; } ;
typedef TYPE_1__ pthread_t ;



void taosResetPthread(pthread_t *thread) {
  thread->p = 0;
}
