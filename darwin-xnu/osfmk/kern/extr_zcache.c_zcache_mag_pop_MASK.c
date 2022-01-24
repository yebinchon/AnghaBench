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
struct zcc_magazine {size_t zcc_magazine_index; int /*<<< orphan*/ ** zcc_elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zcc_magazine*) ; 

void *FUNC2(struct zcc_magazine *mag)
{
	void	*elem;
	FUNC0(FUNC1(mag));
	elem =  mag->zcc_elements[--mag->zcc_magazine_index];
	/* Ensure pointer to element cannot be accessed after we pop it */
	mag->zcc_elements[mag->zcc_magazine_index] = NULL;
	FUNC0(elem != NULL);
	return elem;
}