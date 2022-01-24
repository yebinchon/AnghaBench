#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifnet_t ;
struct TYPE_8__ {scalar_t__ buf_interface; int buf_sndbuf; } ;
typedef  TYPE_2__ ifnet_buffer_status_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_7__ {int if_eflags; scalar_t__ if_sndbyte_unsent; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int IFEF_TXSTART ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

errno_t
FUNC3(const ifnet_t ifp, ifnet_buffer_status_t *buf_status)
{
	if (ifp == NULL || buf_status == NULL)
		return (EINVAL);

	FUNC2(buf_status, sizeof (*buf_status));

	if (!FUNC1(ifp))
		return (ENXIO);

	if (ifp->if_eflags & IFEF_TXSTART)
		buf_status->buf_interface = FUNC0(&ifp->if_snd);

	buf_status->buf_sndbuf = ((buf_status->buf_interface != 0) ||
	    (ifp->if_sndbyte_unsent != 0)) ? 1 : 0;

	return (0);
}