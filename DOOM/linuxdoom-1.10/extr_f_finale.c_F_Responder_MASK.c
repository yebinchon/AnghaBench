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
typedef  int /*<<< orphan*/  event_t ;
typedef  int boolean ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int finalestage ; 

boolean FUNC1 (event_t *event)
{
    if (finalestage == 2)
	return FUNC0 (event);
	
    return false;
}