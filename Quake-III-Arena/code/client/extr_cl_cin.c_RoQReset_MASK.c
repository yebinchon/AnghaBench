#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  file; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  iFile; int /*<<< orphan*/  fileName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMV_LOOPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ cin ; 
 TYPE_1__* cinTable ; 
 size_t currentHandle ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC6() {
	
	if (currentHandle < 0) return;

	FUNC4(cinTable[currentHandle].iFile);
	FUNC0( cinTable[currentHandle].iFile );
	FUNC1 (cinTable[currentHandle].fileName, &cinTable[currentHandle].iFile, qtrue);
	// let the background thread start reading ahead
	FUNC3( cinTable[currentHandle].iFile, 0x10000 );
	FUNC5 (cin.file, 16, 1, cinTable[currentHandle].iFile);
	FUNC2();
	cinTable[currentHandle].status = FMV_LOOPED;
}