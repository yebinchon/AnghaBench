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
typedef  scalar_t__ int32 ;

/* Variables and functions */
 scalar_t__ DB_MUTE ; 
 double DB_STEP ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static int32 FUNC2(double d) {
	if (d == 0)
		return(DB_MUTE - 1);
	else
		return FUNC0(-(int32)(20.0 * FUNC1(d) / DB_STEP), DB_MUTE - 1);  /* 0 -- 127 */
}