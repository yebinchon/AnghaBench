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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_MEM_WRITE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/  const*,scalar_t__) ; 

int FUNC4(uint32_t address, const uint8_t * buffer, uint32_t size)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!buffer)
        return -1;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, size + 4);
    if(!io_buf)
        return -2;

    io_buf[0] = address;
    FUNC3(io_buf + 1, buffer, size);

    int res = FUNC0(iosuhaxHandle, IOCTL_MEM_WRITE, io_buf, size + 4, 0, 0);

    FUNC1(io_buf);
    return res;
}