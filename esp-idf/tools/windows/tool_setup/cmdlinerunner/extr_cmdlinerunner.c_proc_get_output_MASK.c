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
struct TYPE_3__ {int /*<<< orphan*/  pipe_server_handle; } ;
typedef  TYPE_1__ proc_instance_t ;
typedef  scalar_t__* LPSTR ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_NO_DATA ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,size_t,size_t*,int /*<<< orphan*/ *) ; 

DWORD FUNC3(proc_instance_t *inst, LPSTR dest, DWORD sz)
{
    DWORD read_bytes;
    BOOL res = FUNC2(inst->pipe_server_handle, dest,
            sz - 1, &read_bytes, NULL);
    if (!res) {
        if (FUNC0() == ERROR_NO_DATA) {
            return 0;
        } else {
            FUNC1();
            return 0;
        }
    }
    dest[read_bytes] = 0;
    return read_bytes;
}