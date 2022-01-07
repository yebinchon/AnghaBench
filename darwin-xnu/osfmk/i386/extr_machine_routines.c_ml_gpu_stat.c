
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_4__ {int thread_gpu_ns; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;



uint64_t
ml_gpu_stat(thread_t t) {
 return t->machine.thread_gpu_ns;
}
