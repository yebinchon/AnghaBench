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
typedef  enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;

/* Variables and functions */
 int AVCHROMA_LOC_NB ; 
 int AVCHROMA_LOC_UNSPECIFIED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 

int FUNC1(int *xpos, int *ypos, enum AVChromaLocation pos)
{
    if (pos <= AVCHROMA_LOC_UNSPECIFIED || pos >= AVCHROMA_LOC_NB)
        return FUNC0(EINVAL);
    pos--;

    *xpos = (pos&1) * 128;
    *ypos = ((pos>>1)^(pos<4)) * 128;

    return 0;
}