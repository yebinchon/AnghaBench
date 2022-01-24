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
typedef  size_t Size ;
typedef  int /*<<< orphan*/  BackendManagementShmemData ;
typedef  int /*<<< orphan*/  BackendData ;

/* Variables and functions */
 int FUNC0 () ; 
 size_t FUNC1 (size_t,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static size_t
FUNC3(void)
{
	Size size = 0;
	int totalProcs = FUNC0();

	size = FUNC1(size, sizeof(BackendManagementShmemData));
	size = FUNC1(size, FUNC2(sizeof(BackendData), totalProcs));

	return size;
}