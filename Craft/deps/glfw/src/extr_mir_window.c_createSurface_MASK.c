#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_9__ {TYPE_1__ mir; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_8__ {int /*<<< orphan*/  connection; } ;
struct TYPE_10__ {TYPE_2__ mir; } ;
typedef  int /*<<< orphan*/  MirSurfaceSpec ;
typedef  scalar_t__ MirPixelFormat ;
typedef  int /*<<< orphan*/  MirBufferUsage ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  addNewEvent ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  mir_buffer_usage_hardware ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ mir_pixel_format_invalid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC10(_GLFWwindow* window)
{
    MirSurfaceSpec* spec;
    MirBufferUsage buffer_usage = mir_buffer_usage_hardware;
    MirPixelFormat pixel_format = FUNC1();

    if (pixel_format == mir_pixel_format_invalid)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to find a correct pixel format");
        return GL_FALSE;
    }
 
    spec = FUNC2(_glfw.mir.connection,
                                                         window->mir.width,
                                                         window->mir.height,
                                                         pixel_format);

    FUNC8(spec, buffer_usage);
    FUNC9(spec, "MirSurface");

    window->mir.surface = FUNC3(spec);
    FUNC7(spec);

    if (!FUNC5(window->mir.surface))
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to create surface: %s",
                        FUNC4(window->mir.surface));

        return GL_FALSE;
    }

    FUNC6(window->mir.surface, addNewEvent, window);

    return GL_TRUE;
}