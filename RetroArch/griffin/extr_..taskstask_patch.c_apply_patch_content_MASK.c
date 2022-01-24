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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int (* patch_func_t ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  enum patch_error { ____Placeholder_patch_error } patch_error ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_FAILED_TO_PATCH ; 
 int PATCH_SUCCESS ; 
 int PATCH_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(uint8_t **buf,
      ssize_t *size, const char *patch_desc, const char *patch_path,
      patch_func_t func, void *patch_data, int64_t patch_size)
{
   enum patch_error err     = PATCH_UNKNOWN;
   ssize_t ret_size         = *size;
   uint8_t *ret_buf         = *buf;
   uint64_t target_size     = 0;
   uint8_t *patched_content = NULL;

   FUNC1("Found %s file in \"%s\", attempting to patch ...\n",
         patch_desc, patch_path);

   err = func((const uint8_t*)patch_data, patch_size, ret_buf,
         ret_size, &patched_content, &target_size);

   if (err == PATCH_SUCCESS)
   {
      FUNC2(ret_buf);
      *buf  = patched_content;
      *size = target_size;
   }
   else
      FUNC0("%s %s: %s #%u\n",
            FUNC3(MSG_FAILED_TO_PATCH),
            patch_desc,
            FUNC3(MSG_ERROR),
            (unsigned)err);

   return true;
}