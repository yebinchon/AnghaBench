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
typedef  scalar_t__ sampling_callback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ __pad_samplingcallback ; 
 int /*<<< orphan*/  __pad_samplinghandler ; 

sampling_callback FUNC2(sampling_callback cb)
{
	sampling_callback ret;

	ret = __pad_samplingcallback;
	__pad_samplingcallback = cb;
	if(cb) {
		FUNC0(__pad_samplinghandler);
	} else {
		FUNC1(__pad_samplinghandler);
	}

	return ret;
}