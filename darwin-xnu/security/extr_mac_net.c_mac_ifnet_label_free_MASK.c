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
 int /*<<< orphan*/  ifnet_label_destroy ; 
 int /*<<< orphan*/  FUNC1 (struct label*) ; 

__attribute__((used)) static void
FUNC2(struct label *label)
{

	FUNC0(ifnet_label_destroy, label);
	FUNC1(label);
}