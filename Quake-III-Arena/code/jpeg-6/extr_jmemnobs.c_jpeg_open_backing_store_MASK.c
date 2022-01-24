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
typedef  int /*<<< orphan*/  j_common_ptr ;
typedef  int /*<<< orphan*/  backing_store_ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JERR_NO_BACKING_STORE ; 

void
FUNC1 (j_common_ptr cinfo, backing_store_ptr info,
			 long total_bytes_needed)
{
  FUNC0(cinfo, JERR_NO_BACKING_STORE);
}