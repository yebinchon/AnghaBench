#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct TYPE_4__ {int control_mask; int alt_mask; int shift_mask; int super_mask; struct xkb_keymap* keymap; struct xkb_state* state; int /*<<< orphan*/  context; } ;
struct TYPE_5__ {TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xkb_keymap*) ; 
 int FUNC5 (struct xkb_keymap*,char*) ; 
 struct xkb_keymap* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xkb_keymap*) ; 
 struct xkb_state* FUNC8 (struct xkb_keymap*) ; 
 int /*<<< orphan*/  FUNC9 (struct xkb_state*) ; 

__attribute__((used)) static void FUNC10(void* data,
                                 struct wl_keyboard* keyboard,
                                 uint32_t format,
                                 int fd,
                                 uint32_t size)
{
    struct xkb_keymap* keymap;
    struct xkb_state* state;
    char* mapStr;

    if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1)
    {
        FUNC1(fd);
        return;
    }

    mapStr = FUNC2(NULL, size, PROT_READ, MAP_SHARED, fd, 0);
    if (mapStr == MAP_FAILED) {
        FUNC1(fd);
        return;
    }

    keymap = FUNC6(_glfw.wl.xkb.context,
                                     mapStr,
                                     XKB_KEYMAP_FORMAT_TEXT_V1,
                                     0);
    FUNC3(mapStr, size);
    FUNC1(fd);

    if (!keymap)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to compile keymap");
        return;
    }

    state = FUNC8(keymap);
    if (!state)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to create XKB state");
        FUNC7(keymap);
        return;
    }

    FUNC4(_glfw.wl.xkb.keymap);
    FUNC9(_glfw.wl.xkb.state);
    _glfw.wl.xkb.keymap = keymap;
    _glfw.wl.xkb.state = state;

    _glfw.wl.xkb.control_mask =
        1 << FUNC5(_glfw.wl.xkb.keymap, "Control");
    _glfw.wl.xkb.alt_mask =
        1 << FUNC5(_glfw.wl.xkb.keymap, "Mod1");
    _glfw.wl.xkb.shift_mask =
        1 << FUNC5(_glfw.wl.xkb.keymap, "Shift");
    _glfw.wl.xkb.super_mask =
        1 << FUNC5(_glfw.wl.xkb.keymap, "Mod4");
}