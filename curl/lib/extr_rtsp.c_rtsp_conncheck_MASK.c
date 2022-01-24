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
struct connectdata {int dummy; } ;

/* Variables and functions */
 unsigned int CONNCHECK_ISDEAD ; 
 unsigned int CONNRESULT_DEAD ; 
 unsigned int CONNRESULT_NONE ; 
 scalar_t__ FUNC0 (struct connectdata*) ; 

__attribute__((used)) static unsigned int FUNC1(struct connectdata *check,
                                   unsigned int checks_to_perform)
{
  unsigned int ret_val = CONNRESULT_NONE;

  if(checks_to_perform & CONNCHECK_ISDEAD) {
    if(FUNC0(check))
      ret_val |= CONNRESULT_DEAD;
  }

  return ret_val;
}