
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int thread_gpu_ns; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;


 TYPE_2__* current_thread () ;

void
ml_gpu_stat_update(uint64_t gpu_ns_delta) {
 current_thread()->machine.thread_gpu_ns += gpu_ns_delta;
}
