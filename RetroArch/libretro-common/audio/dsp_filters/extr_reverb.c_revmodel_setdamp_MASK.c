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
struct revmodel {float damp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct revmodel*) ; 
 float scaledamp ; 

__attribute__((used)) static void FUNC1(struct revmodel *rev, float value)
{
   rev->damp = value * scaledamp;
   FUNC0(rev);
}