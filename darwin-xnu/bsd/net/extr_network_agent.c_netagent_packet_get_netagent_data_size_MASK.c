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
struct netagent {int netagent_data_size; } ;
typedef  int /*<<< orphan*/  netagent_peek ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct netagent*) ; 
 int /*<<< orphan*/  FUNC1 (struct netagent*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(mbuf_t packet, int offset, int *err)
{
	int error = 0;

	struct netagent netagent_peek;
	FUNC1(&netagent_peek, 0, sizeof(netagent_peek));

	*err = 0;

	error = FUNC0(packet, offset, sizeof(netagent_peek), &netagent_peek);
	if (error) {
		*err = ENOENT;
		return (-1);
	}

	return (netagent_peek.netagent_data_size);
}