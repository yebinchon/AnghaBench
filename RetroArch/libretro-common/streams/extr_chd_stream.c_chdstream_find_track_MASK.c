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
typedef  int /*<<< orphan*/  metadata_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  chd_file ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(chd_file *fd, int32_t track, metadata_t *meta)
{
   if (track < 0)
      return FUNC0(fd, track, meta);
   return FUNC1(fd, track, meta);
}