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
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  ro ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct route*) ; 
 int /*<<< orphan*/  FUNC1 (struct route*,int) ; 
 int FUNC2 (struct mbuf*,int /*<<< orphan*/ *,struct route*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct mbuf *m)
{
	struct route ro;
	int error;

	FUNC1(&ro, sizeof (ro));

	error = FUNC2(m, NULL, &ro, 0, NULL, NULL);

	FUNC0(&ro);

	return (error);
}