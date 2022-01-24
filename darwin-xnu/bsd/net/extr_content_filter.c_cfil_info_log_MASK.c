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
struct cfil_info {int /*<<< orphan*/  cfi_so; int /*<<< orphan*/  cfi_sock_id; int /*<<< orphan*/ * cfi_hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC2(int level, struct cfil_info *cfil_info, const char* msg)
{
	if (cfil_info == NULL)
		return;

	if (cfil_info->cfi_hash_entry != NULL)
		FUNC0(level, cfil_info->cfi_so, cfil_info->cfi_hash_entry, cfil_info->cfi_sock_id, msg);
	else
		FUNC1(level, cfil_info->cfi_so, msg);
}