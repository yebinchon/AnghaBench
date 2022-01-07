
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtha_nactions; int ** dtha_actions; int * dtha_predicate; } ;
typedef TYPE_1__ dtrace_helper_action_t ;
typedef int dtrace_difo_t ;


 scalar_t__ dtrace_difo_validate_helper (int *) ;

__attribute__((used)) static int
dtrace_helper_validate(dtrace_helper_action_t *helper)
{
 int err = 0, i;
 dtrace_difo_t *dp;

 if ((dp = helper->dtha_predicate) != ((void*)0))
  err += dtrace_difo_validate_helper(dp);

 for (i = 0; i < helper->dtha_nactions; i++)
  err += dtrace_difo_validate_helper(helper->dtha_actions[i]);

 return (err == 0);
}
