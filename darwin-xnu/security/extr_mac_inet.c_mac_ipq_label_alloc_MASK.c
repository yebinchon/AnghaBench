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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  ipq_label_destroy ; 
 int /*<<< orphan*/  ipq_label_init ; 
 struct label* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct label*) ; 

__attribute__((used)) static struct label *
FUNC4(int flag)
{
	struct label *label;
	int error;

	label = FUNC2(flag);
	if (label == NULL)
		return (NULL);

	FUNC0(ipq_label_init, label, flag);
	if (error) {
		FUNC1(ipq_label_destroy, label);
		FUNC3(label);
		return (NULL);
	}
	return (label);
}