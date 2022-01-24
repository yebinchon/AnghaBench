#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ version; } ;
typedef  int /*<<< orphan*/  Result ;
typedef  TYPE_1__ AM_TitleEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  MEDIATYPE_SD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(u64 titleId, u16 version){
	u32 titlesToRetrieve;
	u32 titlesRetrieved;
	u64* titleIds;
	bool titleExists = false;
	AM_TitleEntry titleInfo;
	Result failed;

	failed = FUNC0(MEDIATYPE_SD, &titlesToRetrieve);
	if(FUNC3(failed))
		return -1;

	titleIds = FUNC5(titlesToRetrieve * sizeof(uint64_t));
	if(titleIds == NULL)
		return -1;

	failed = FUNC2(&titlesRetrieved, MEDIATYPE_SD, titlesToRetrieve, titleIds);
	if(FUNC3(failed))
		return -1;

	for(u32 titlesToCheck = 0; titlesToCheck < titlesRetrieved; titlesToCheck++){
		if(titleIds[titlesToCheck] == titleId){
			titleExists = true;
			break;
		}
	}

	FUNC4(titleIds);

	if(titleExists){
		failed = FUNC1(MEDIATYPE_SD, 1 /*titleCount*/, &titleId, &titleInfo);
		if(FUNC3(failed))
			return -1;

		if(titleInfo.version == version)
			return 1;
	}

	return 0;
}