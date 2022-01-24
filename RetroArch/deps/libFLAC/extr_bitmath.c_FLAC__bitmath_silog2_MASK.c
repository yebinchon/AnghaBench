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
typedef  int FLAC__int64 ;

/* Variables and functions */
 int FUNC0 (int) ; 

unsigned FUNC1(FLAC__int64 v)
{
	if(v == 0)
		return 0;

	if(v == -1)
		return 2;

	v = (v < 0) ? (-(v+1)) : v;
	return FUNC0(v)+2;
}