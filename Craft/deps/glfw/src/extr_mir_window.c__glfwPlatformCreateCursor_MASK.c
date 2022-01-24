#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * custom_cursor; int /*<<< orphan*/  conf; } ;
struct TYPE_12__ {TYPE_2__ mir; } ;
typedef  TYPE_3__ _GLFWcursor ;
struct TYPE_10__ {int /*<<< orphan*/  connection; } ;
struct TYPE_15__ {TYPE_1__ mir; } ;
struct TYPE_14__ {int width; int height; unsigned char* pixels; } ;
struct TYPE_13__ {char* vaddr; int stride; } ;
typedef  scalar_t__ MirPixelFormat ;
typedef  TYPE_4__ MirGraphicsRegion ;
typedef  int /*<<< orphan*/  MirBufferStream ;
typedef  TYPE_5__ GLFWimage ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  mir_buffer_usage_software ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ mir_pixel_format_invalid ; 

int FUNC6(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    MirBufferStream* stream;
    MirPixelFormat pixel_format = FUNC1();

    int i_w = image->width;
    int i_h = image->height;

    if (pixel_format == mir_pixel_format_invalid)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to find a correct pixel format");
        return GL_FALSE;
    }

    stream = FUNC4(_glfw.mir.connection,
                                                      i_w, i_h,
                                                      pixel_format,
                                                      mir_buffer_usage_software);

    cursor->mir.conf = FUNC5(stream, xhot, yhot);

    char* dest;
    unsigned char *pixels;
    int i, r_stride, bytes_per_pixel, bytes_per_row;

    MirGraphicsRegion region;
    FUNC3(stream, &region);

    // FIXME Figure this out based on the current_pf
    bytes_per_pixel = 4;
    bytes_per_row   = bytes_per_pixel * i_w;

    dest   = region.vaddr;
    pixels = image->pixels;

    r_stride = region.stride;

    for (i = 0; i < i_h; i++)
    {
        FUNC2(dest, pixels, bytes_per_row);
        dest   += r_stride;
        pixels += r_stride;
    }

    cursor->mir.custom_cursor = stream;

    return GL_TRUE;
}