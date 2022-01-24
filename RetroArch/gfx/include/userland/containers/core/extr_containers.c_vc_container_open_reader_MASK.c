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
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_IO_T ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

VC_CONTAINER_T *FUNC3( const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_IO_T *io;
   VC_CONTAINER_T *ctx;

   /* Start by opening the URI */
   io = FUNC1( uri, VC_CONTAINER_IO_MODE_READ, p_status );
   if (!io)
      return 0;

   ctx = FUNC2( io, uri, p_status, pfn_progress, progress_userdata);
   if (!ctx)
      FUNC0(io);
   return ctx;
}