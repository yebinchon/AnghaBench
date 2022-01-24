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
typedef  int VdpStatus ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  EXDEV ; 
#define  VDP_STATUS_DISPLAY_PREEMPTED 135 
#define  VDP_STATUS_ERROR 134 
#define  VDP_STATUS_HANDLE_DEVICE_MISMATCH 133 
#define  VDP_STATUS_INVALID_HANDLE 132 
#define  VDP_STATUS_INVALID_POINTER 131 
#define  VDP_STATUS_NO_IMPLEMENTATION 130 
#define  VDP_STATUS_OK 129 
#define  VDP_STATUS_RESOURCES 128 

__attribute__((used)) static int FUNC1(VdpStatus status)
{
    switch (status) {
    case VDP_STATUS_OK:
        return 0;
    case VDP_STATUS_NO_IMPLEMENTATION:
        return FUNC0(ENOSYS);
    case VDP_STATUS_DISPLAY_PREEMPTED:
        return FUNC0(EIO);
    case VDP_STATUS_INVALID_HANDLE:
        return FUNC0(EBADF);
    case VDP_STATUS_INVALID_POINTER:
        return FUNC0(EFAULT);
    case VDP_STATUS_RESOURCES:
        return FUNC0(ENOBUFS);
    case VDP_STATUS_HANDLE_DEVICE_MISMATCH:
        return FUNC0(EXDEV);
    case VDP_STATUS_ERROR:
        return FUNC0(EIO);
    default:
        return FUNC0(EINVAL);
    }
}