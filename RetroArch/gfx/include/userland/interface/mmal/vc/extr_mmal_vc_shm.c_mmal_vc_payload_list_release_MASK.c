#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ in_use; scalar_t__ mem; scalar_t__ vc_handle; scalar_t__ handle; } ;
typedef  TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;

/* Variables and functions */
 TYPE_3__ mmal_vc_payload_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(MMAL_VC_PAYLOAD_ELEM_T *elem)
{
   FUNC0(&mmal_vc_payload_list.lock);
   elem->handle = elem->vc_handle = 0;
   elem->mem = 0;
   elem->in_use = 0;
   FUNC1(&mmal_vc_payload_list.lock);
}