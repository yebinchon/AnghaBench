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
struct source_version_command {int /*<<< orphan*/  has_srcversion; int /*<<< orphan*/  version; } ;
typedef  struct source_version_command KXLDsrcversion ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct source_version_command*) ; 

void
FUNC1(KXLDsrcversion *srcversion, struct source_version_command *src)
{
    FUNC0(srcversion);
    FUNC0(src);

    srcversion->version = src->version;
    srcversion->has_srcversion = TRUE;
}