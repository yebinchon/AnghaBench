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
struct TYPE_3__ {int containsVar; int varArgument; int badCoalesce; } ;
typedef  TYPE_1__ WalkerState ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC1(Node *expression, bool *varArgument, bool *badCoalesce)
{
	bool result;
	WalkerState data;
	data.containsVar = data.varArgument = data.badCoalesce = false;

	result = FUNC0(expression, &data);

	*varArgument |= data.varArgument;
	*badCoalesce |= data.badCoalesce;
	return result;
}