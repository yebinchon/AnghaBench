
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_call_group_t ;
typedef int boolean_t ;
struct TYPE_3__ {int flags; } ;


 int TCG_PARALLEL ;

__attribute__((used)) static inline boolean_t
group_isparallel(thread_call_group_t group)
{
 return ((group->flags & TCG_PARALLEL) != 0);
}
