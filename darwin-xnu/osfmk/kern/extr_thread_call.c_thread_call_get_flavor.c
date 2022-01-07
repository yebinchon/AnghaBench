
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int thread_call_flavor_t ;
struct TYPE_3__ {int tc_flags; } ;


 int TCF_ABSOLUTE ;
 int TCF_CONTINUOUS ;
 int THREAD_CALL_CONTINUOUS ;

__attribute__((used)) static inline thread_call_flavor_t
thread_call_get_flavor(thread_call_t call)
{
 return (call->tc_flags & THREAD_CALL_CONTINUOUS) ? TCF_CONTINUOUS : TCF_ABSOLUTE;
}
