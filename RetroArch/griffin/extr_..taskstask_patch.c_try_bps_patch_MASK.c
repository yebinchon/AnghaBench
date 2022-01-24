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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  bps_apply_patch ; 
 int /*<<< orphan*/  FUNC1 (char const*,void**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static bool FUNC5(bool allow_bps, const char *name_bps,
      uint8_t **buf, ssize_t *size)
{
   if (allow_bps && !FUNC4(name_bps))
      if (FUNC3(name_bps))
      {
         int64_t patch_size;
         bool ret                 = false;
         void *patch_data         = NULL;

         if (!FUNC1(name_bps, &patch_data, &patch_size))
            return false;

         if (patch_size >= 0)
         {
            ret                      = FUNC0(
                  buf, size, "BPS", name_bps,
                  bps_apply_patch, patch_data, patch_size);
         }

         if (patch_data)
            FUNC2(patch_data);
         return ret;
      }
   return false;
}