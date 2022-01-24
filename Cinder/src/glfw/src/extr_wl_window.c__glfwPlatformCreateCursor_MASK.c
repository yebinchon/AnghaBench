#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wl_shm_pool {int dummy; } ;
struct TYPE_9__ {int width; int height; int xhot; int yhot; int /*<<< orphan*/  buffer; } ;
struct TYPE_10__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWcursor ;
struct TYPE_8__ {int /*<<< orphan*/  shm; } ;
struct TYPE_12__ {TYPE_1__ wl; } ;
struct TYPE_11__ {int width; int height; scalar_t__ pixels; } ;
typedef  TYPE_4__ GLFWimage ;

/* Variables and functions */
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GLFW_TRUE ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  WL_SHM_FORMAT_ARGB8888 ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 struct wl_shm_pool* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_shm_pool*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_shm_pool*) ; 

int FUNC8(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    struct wl_shm_pool* pool;
    int stride = image->width * 4;
    int length = image->width * image->height * 4;
    void* data;
    int fd, i;

    fd = FUNC2(length);
    if (fd < 0)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Creating a buffer file for %d B failed: %m",
                        length);
        return GLFW_FALSE;
    }

    data = FUNC3(NULL, length, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (data == MAP_FAILED)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Cursor mmap failed: %m");
        FUNC1(fd);
        return GLFW_FALSE;
    }

    pool = FUNC5(_glfw.wl.shm, fd, length);

    FUNC1(fd);
    unsigned char* source = (unsigned char*) image->pixels;
    unsigned char* target = data;
    for (i = 0;  i < image->width * image->height;  i++, source += 4)
    {
        unsigned int alpha = source[3];

        *target++ = (unsigned char) ((source[2] * alpha) / 255);
        *target++ = (unsigned char) ((source[1] * alpha) / 255);
        *target++ = (unsigned char) ((source[0] * alpha) / 255);
        *target++ = (unsigned char) alpha;
    }

    cursor->wl.buffer =
        FUNC6(pool, 0,
                                  image->width,
                                  image->height,
                                  stride, WL_SHM_FORMAT_ARGB8888);
    FUNC4(data, length);
    FUNC7(pool);

    cursor->wl.width = image->width;
    cursor->wl.height = image->height;
    cursor->wl.xhot = xhot;
    cursor->wl.yhot = yhot;
    return GLFW_TRUE;
}