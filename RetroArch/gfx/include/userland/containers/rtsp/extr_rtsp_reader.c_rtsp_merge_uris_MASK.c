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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC10( VC_CONTAINER_T *p_ctx,
      const char *base_uri_str,
      const char *relative_uri_str,
      char **p_merged_uri_str)
{
   VC_URI_PARTS_T *base_uri = NULL;
   VC_URI_PARTS_T *relative_uri = NULL;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   uint32_t merged_size;

   *p_merged_uri_str = NULL;
   relative_uri = FUNC5();
   if (!relative_uri) goto tidy_up;
   if (!FUNC7(relative_uri, relative_uri_str))
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   if (FUNC9(relative_uri) != NULL)
   {
      /* URI is absolute, not relative, so return it as the merged URI */
      size_t len = FUNC2(relative_uri_str);

      *p_merged_uri_str = (char *)FUNC1(len + 1);
      if (!*p_merged_uri_str) goto tidy_up;

      FUNC3(*p_merged_uri_str, relative_uri_str, len);
      status = VC_CONTAINER_SUCCESS;
      goto tidy_up;
   }

   base_uri = FUNC5();
   if (!base_uri) goto tidy_up;
   if (!FUNC7(base_uri, base_uri_str))
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   /* Build up merged URI in relative_uri, using base_uri as necessary */
   if (!FUNC6(base_uri, relative_uri)) goto tidy_up;

   merged_size = FUNC4(relative_uri, NULL, 0) + 1;
   *p_merged_uri_str = (char *)FUNC1(merged_size);
   if (!*p_merged_uri_str) goto tidy_up;

   FUNC4(relative_uri, *p_merged_uri_str, merged_size);

   status = VC_CONTAINER_SUCCESS;

tidy_up:
   if (base_uri) FUNC8(base_uri);
   if (relative_uri) FUNC8(relative_uri);
   if (status != VC_CONTAINER_SUCCESS)
      FUNC0(p_ctx, "RTSP: Error merging URIs: %d", (int)status);
   return status;
}