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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  ifnet_label_init ; 
 struct label* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct label *
FUNC2(void)
{
	struct label *label;

	label = FUNC1(M_WAITOK);
	if (label == NULL)
		return (NULL);
	FUNC0(ifnet_label_init, label);
	return (label);
}