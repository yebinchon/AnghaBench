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
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GX_TOP_BOTTOM ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

VCOS_STATUS_T FUNC3(const GRAPHICS_RESOURCE_HANDLE res, void **pixels)
{
   VCOS_STATUS_T status = VCOS_SUCCESS;
   GX_CLIENT_STATE_T save;
   FUNC2(&save, res);

   /* Default to top-top-bottom raster scan order */
   status = FUNC0(res, pixels, GX_TOP_BOTTOM);

   FUNC1(&save);
   return status;
}