#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buffer; } ;
typedef  unsigned int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int*) ; 

FLAC__bool FUNC3(FLAC__BitReader *br, int *val, unsigned parameter)
{
	FLAC__uint32 lsbs = 0, msbs = 0;
	unsigned uval;

	FUNC0(0 != br);
	FUNC0(0 != br->buffer);
	FUNC0(parameter <= 31);

	/* read the unary MSBs and end bit */
	if(!FUNC2(br, &msbs))
		return false;

	/* read the binary LSBs */
	if(!FUNC1(br, &lsbs, parameter))
		return false;

	/* compose the value */
	uval = (msbs << parameter) | lsbs;
	if(uval & 1)
		*val = -((int)(uval >> 1)) - 1;
	else
		*val = (int)(uval >> 1);

	return true;
}