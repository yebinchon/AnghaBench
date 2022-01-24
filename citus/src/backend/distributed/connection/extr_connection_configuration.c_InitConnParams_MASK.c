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
struct TYPE_3__ {int maxSize; int /*<<< orphan*/  values; int /*<<< orphan*/  keywords; int /*<<< orphan*/  size; } ;
typedef  int Size ;
typedef  TYPE_1__ ConnParamsInfo ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__ ConnParams ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3()
{
	Size maxSize = FUNC0();
	ConnParamsInfo connParams = {
		.keywords = FUNC1(maxSize * sizeof(char *)),
		.values = FUNC1(maxSize * sizeof(char *)),
		.size = 0,
		.maxSize = maxSize
	};

	FUNC2(connParams.keywords, 0, maxSize * sizeof(char *));
	FUNC2(connParams.values, 0, maxSize * sizeof(char *));

	ConnParams = connParams;
}