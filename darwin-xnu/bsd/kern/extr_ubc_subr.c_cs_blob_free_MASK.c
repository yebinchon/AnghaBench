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
struct cs_blob {int /*<<< orphan*/ * csb_entitlements; scalar_t__ csb_mem_kaddr; int /*<<< orphan*/  csb_mem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_blob* const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC3(
    struct cs_blob * const blob)
{
    if (blob != NULL) {
        if (blob->csb_mem_kaddr) {
            FUNC2(blob->csb_mem_kaddr, blob->csb_mem_size);
            blob->csb_mem_kaddr = 0;
        }
        if (blob->csb_entitlements != NULL) {
            FUNC1(blob->csb_entitlements);
            blob->csb_entitlements = NULL;
        }
        FUNC0(blob, sizeof (*blob));
    }
}