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
typedef  int /*<<< orphan*/  value ;
struct sysctl_req {int /*<<< orphan*/  newptr; scalar_t__ oldptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sysctl_req*,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct sysctl_req *req,
	int (*get)(void), int (*set)(int))
{
	FUNC0(req != NULL);
	FUNC0(get != NULL);
	FUNC0(set != NULL);

	int value = 0;
	if (req->oldptr) {
		value = get();
	}

	int error = FUNC1(req, value, sizeof(value), &value, NULL);

	if (error || !req->newptr) {
		return error;
	}

	return set(value);
}