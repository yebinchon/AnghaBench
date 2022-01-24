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
struct cs_blob {int /*<<< orphan*/ * csb_entitlements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void
FUNC2(struct cs_blob *csblob, void * entitlements)
{
    FUNC0(csblob->csb_entitlements == NULL);
    if (entitlements) FUNC1(entitlements);
    csblob->csb_entitlements = entitlements;
}