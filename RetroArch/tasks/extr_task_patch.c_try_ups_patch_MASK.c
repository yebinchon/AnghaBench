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
 int /*<<< orphan*/  FUNC1 (char const*,void**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  ups_apply_patch ; 

__attribute__((used)) static bool FUNC5(bool allow_ups, const char *name_ups,
      uint8_t **buf, ssize_t *size)
{
   if (allow_ups && !FUNC4(name_ups))
      if (FUNC3(name_ups))
      {
         int64_t patch_size;
         bool ret                 = false;
         void *patch_data         = NULL;

         if (!FUNC1(name_ups, &patch_data, &patch_size))
            return false;

         if (patch_size >= 0)
         {
            ret                      = FUNC0(
                  buf, size, "UPS", name_ups,
                  ups_apply_patch, patch_data, patch_size);
         }

         if (patch_data)
            FUNC2(patch_data);
         return ret;
      }
   return false;
}