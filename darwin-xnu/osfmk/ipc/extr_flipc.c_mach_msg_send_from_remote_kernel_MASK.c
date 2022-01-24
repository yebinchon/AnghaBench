#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_node_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
typedef  scalar_t__ mach_msg_return_t ;
typedef  int /*<<< orphan*/  mach_msg_header_t ;
typedef  TYPE_1__* ipc_kmsg_t ;
struct TYPE_7__ {int /*<<< orphan*/  ikm_node; } ;

/* Variables and functions */
 scalar_t__ MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  MACH_SEND_KERNEL_DEFAULT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mach_msg_return_t
FUNC5(mach_msg_header_t	*msg,
                                 mach_msg_size_t	send_size,
                                 mach_node_t		node)
{
    ipc_kmsg_t kmsg;
    mach_msg_return_t mr;

    mr = FUNC3(msg, send_size, &kmsg);
    if (mr != MACH_MSG_SUCCESS)
        return mr;

    mr = FUNC0(kmsg);
    if (mr != MACH_MSG_SUCCESS) {
        FUNC2(kmsg);
        return mr;
    }

    kmsg->ikm_node = node;	// node that needs to receive message ack
    mr = FUNC4(kmsg,
                       MACH_SEND_KERNEL_DEFAULT,
                       MACH_MSG_TIMEOUT_NONE);
    if (mr != MACH_MSG_SUCCESS) {
        FUNC1(kmsg);
    }

    return mr;
}