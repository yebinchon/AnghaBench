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
typedef  void* uint32_t ;
struct fb_dmacopy {void* length; void* src; void* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FBIODMACOPY ; 
 int O_RDWR ; 
 int O_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct fb_dmacopy*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *dst, uint32_t src, uint32_t length)
{
    const char *filename = "/dev/fb0";
    int memFd;
    struct fb_dmacopy ioparam;

    ioparam.dst = dst;
    ioparam.src = src;
    ioparam.length = length;

    if (( memFd = FUNC3( filename, O_RDWR | O_SYNC )) < 0 )
    {
        FUNC0( "Unable to open '%s': %s(%d)\n", filename, FUNC4( errno ), errno );
        return -errno;
    }

    if ( FUNC2( memFd, FBIODMACOPY, &ioparam ) != 0 )
    {
        FUNC0( "Failed to get memory size via ioctl: %s(%d)\n",
            FUNC4( errno ), errno );
        FUNC1( memFd );
        return -errno;
    }
    FUNC1( memFd );
    return 0;
}