#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* module; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 size_t FUNC0 (void const*,int,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC1(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   return FUNC0(buffer, 1, size, p_ctx->module->stream);
}