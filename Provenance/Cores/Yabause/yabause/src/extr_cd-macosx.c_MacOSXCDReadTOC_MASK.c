#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  int u32 ;
typedef  int s32 ;
struct TYPE_6__ {TYPE_1__* descriptors; } ;
struct TYPE_5__ {int point; int control; int adr; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ CDTOCDescriptor ;
typedef  TYPE_2__ CDTOC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static s32 FUNC4(u32 *TOC) 
{
  	int add150 = 150, tracks = 0;
	u_char track;
	int i, fad = 0;
	CDTOC *cdTOC = FUNC2();
	CDTOCDescriptor *pTrackDescriptors;
	pTrackDescriptors = cdTOC->descriptors;

	FUNC3(TOC, 0xFF, 0xCC * 2);

	/* Convert TOC to Saturn format */
	for( i = 3; i < FUNC1(cdTOC); i++ ) {
        	track = pTrackDescriptors[i].point;
		fad = FUNC0(pTrackDescriptors[i].p) + add150;
		if ((track > 99) || (track < 1))
			continue;
		TOC[i-3] = (pTrackDescriptors[i].control << 28 | pTrackDescriptors[i].adr << 24 | fad);
		tracks++;
	}

	/* First */
	TOC[99] = pTrackDescriptors[0].control << 28 | pTrackDescriptors[0].adr << 24 | 1 << 16;
	/* Last */
	TOC[100] = pTrackDescriptors[1].control << 28 | pTrackDescriptors[1].adr << 24 | tracks << 16;
	/* Leadout */
	TOC[101] = pTrackDescriptors[2].control << 28 | pTrackDescriptors[2].adr << 24 | FUNC0(pTrackDescriptors[2].p) + add150;

	//free(cdTOC); Looks like this is not need, will look into that.
	return (0xCC * 2);
}