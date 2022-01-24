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
typedef  int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  int /*<<< orphan*/  FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 

FLAC__bool FUNC1(FLAC__BitReader *br, FLAC__uint32 *val)
{
	FLAC__uint32 x8, x32 = 0;

	/* this doesn't need to be that fast as currently it is only used for vorbis comments */

	if(!FUNC0(br, &x32, 8))
		return false;

	if(!FUNC0(br, &x8, 8))
		return false;
	x32 |= (x8 << 8);

	if(!FUNC0(br, &x8, 8))
		return false;
	x32 |= (x8 << 16);

	if(!FUNC0(br, &x8, 8))
		return false;
	x32 |= (x8 << 24);

	*val = x32;
	return true;
}