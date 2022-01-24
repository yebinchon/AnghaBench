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
typedef  int /*<<< orphan*/  learning_rate_policy ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTANT ; 
 int /*<<< orphan*/  EXP ; 
 int /*<<< orphan*/  POLY ; 
 int /*<<< orphan*/  RANDOM ; 
 int /*<<< orphan*/  SIG ; 
 int /*<<< orphan*/  STEP ; 
 int /*<<< orphan*/  STEPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 

learning_rate_policy FUNC2(char *s)
{
    if (FUNC1(s, "random")==0) return RANDOM;
    if (FUNC1(s, "poly")==0) return POLY;
    if (FUNC1(s, "constant")==0) return CONSTANT;
    if (FUNC1(s, "step")==0) return STEP;
    if (FUNC1(s, "exp")==0) return EXP;
    if (FUNC1(s, "sigmoid")==0) return SIG;
    if (FUNC1(s, "steps")==0) return STEPS;
    FUNC0(stderr, "Couldn't find policy %s, going with constant\n", s);
    return CONSTANT;
}