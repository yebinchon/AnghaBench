
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct thread_requested_policy {int dummy; } ;
struct TYPE_3__ {int requested_policy; } ;


 int static_assert (int,char*) ;

uintptr_t
threquested_0(thread_t thread)
{
 static_assert(sizeof(struct thread_requested_policy) == sizeof(uint64_t), "size invariant violated");

 uintptr_t* raw = (uintptr_t*)(void*)&thread->requested_policy;

 return raw[0];
}
