
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int action_t ;


 int T_LOG (char*,int,...) ;
 int errno ;
 scalar_t__ execute_action (int *) ;
 int strerror (int ) ;

int
execute_action_list(action_t *actions, int nactions, int failout)
{
 int i, res;
 for (i = 0, res = 0; (0 == res || (!failout)) && (i < nactions); i++) {
  T_LOG("Starting prep action %d\n", i);
  res = *((int *) execute_action(&(actions[i])));
  if(res != 0) {
   T_LOG("Action list failed on step %d. res = %d errno = %d (%s)\n", i, res,
    errno, strerror(errno));
  } else {
   T_LOG("Action list work succeeded on step %d.\n", i);
  }
 }

 return res;
}
