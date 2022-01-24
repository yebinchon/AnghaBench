#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int SCHED_MAX ; 
 int SCHED_MIN ; 
 int SCHED_OTHER ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2 (pthread_t thread, int policy,
      const struct sched_param *param)
{
   int result;

   /* Validate the thread id. */
   result = FUNC1 (thread, 0);
   if (0 != result)
      return result;

   /* Validate the scheduling policy. */
   if (policy < SCHED_MIN || policy > SCHED_MAX)
      return EINVAL;

   /* Ensure the policy is SCHED_OTHER. */
   if (policy != SCHED_OTHER)
      return ENOTSUP;

   return (FUNC0 (thread, policy, param->sched_priority));
}