#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ temp; scalar_t__ refcount; int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ VC_CONTAINER_WRITER_EXTRAIO_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC2(VC_CONTAINER_T *context, const char *uri,
   VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   FUNC0(context);

   extraio->io = FUNC1( uri, VC_CONTAINER_IO_MODE_WRITE, &status );
   extraio->refcount = 0;
   extraio->temp = 0;
   return status;
}