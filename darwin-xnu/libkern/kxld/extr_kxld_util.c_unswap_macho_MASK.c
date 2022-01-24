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
typedef  int /*<<< orphan*/  u_char ;
struct mach_header {scalar_t__ magic; } ;
typedef  enum NXByteOrder { ____Placeholder_NXByteOrder } NXByteOrder ;

/* Variables and functions */
 scalar_t__ MH_MAGIC ; 
 scalar_t__ MH_MAGIC_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

void FUNC2(u_char *file, enum NXByteOrder host_order, 
    enum NXByteOrder target_order)
{
    struct mach_header *hdr = (struct mach_header *) ((void *) file);

    if (!hdr) return;

    if (hdr->magic == MH_MAGIC) {
        FUNC0(file, host_order, target_order);
    } else if (hdr->magic == MH_MAGIC_64) {
        FUNC1(file, host_order, target_order);
    }
}