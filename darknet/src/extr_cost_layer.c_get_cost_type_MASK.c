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
typedef  int /*<<< orphan*/  COST_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  L1 ; 
 int /*<<< orphan*/  MASKED ; 
 int /*<<< orphan*/  SEG ; 
 int /*<<< orphan*/  SMOOTH ; 
 int /*<<< orphan*/  SSE ; 
 int /*<<< orphan*/  WGAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 

COST_TYPE FUNC2(char *s)
{
    if (FUNC1(s, "seg")==0) return SEG;
    if (FUNC1(s, "sse")==0) return SSE;
    if (FUNC1(s, "masked")==0) return MASKED;
    if (FUNC1(s, "smooth")==0) return SMOOTH;
    if (FUNC1(s, "L1")==0) return L1;
    if (FUNC1(s, "wgan")==0) return WGAN;
    FUNC0(stderr, "Couldn't find cost type %s, going with SSE\n", s);
    return SSE;
}