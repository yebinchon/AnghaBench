#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(StringInfo fileBuffer)
{
	StringInfoData copyData = { NULL, 0, 0, 0 };

	FUNC0(&copyData, 'd');
	FUNC2(&copyData, fileBuffer->data, fileBuffer->len);
	FUNC1(&copyData);
}