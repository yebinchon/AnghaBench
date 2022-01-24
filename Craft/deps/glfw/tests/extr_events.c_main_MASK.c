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
struct TYPE_8__ {int width; int height; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; int /*<<< orphan*/  refreshRate; } ;
struct TYPE_7__ {int number; int /*<<< orphan*/  window; int /*<<< orphan*/  closeable; } ;
typedef  TYPE_1__ Slot ;
typedef  TYPE_2__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  LC_ALL ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  char_callback ; 
 int /*<<< orphan*/  char_mods_callback ; 
 int /*<<< orphan*/  cursor_enter_callback ; 
 int /*<<< orphan*/  cursor_position_callback ; 
 int /*<<< orphan*/  drop_callback ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  monitor_callback ; 
 int /*<<< orphan*/  mouse_button_callback ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC35 (char*,...) ; 
 int /*<<< orphan*/  scroll_callback ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC37 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  window_close_callback ; 
 int /*<<< orphan*/  window_focus_callback ; 
 int /*<<< orphan*/  window_iconify_callback ; 
 int /*<<< orphan*/  window_pos_callback ; 
 int /*<<< orphan*/  window_refresh_callback ; 
 int /*<<< orphan*/  window_size_callback ; 

int FUNC40(int argc, char** argv)
{
    Slot* slots;
    GLFWmonitor* monitor = NULL;
    int ch, i, width, height, count = 1;

    FUNC36(LC_ALL, "");

    FUNC17(error_callback);

    if (!FUNC10())
        FUNC1(EXIT_FAILURE);

    FUNC35("Library initialized\n");

    FUNC20(monitor_callback);

    while ((ch = FUNC5(argc, argv, "hfn:")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC39();
                FUNC1(EXIT_SUCCESS);

            case 'f':
                monitor = FUNC8();
                break;

            case 'n':
                count = (int) FUNC38(optarg, NULL, 10);
                break;

            default:
                FUNC39();
                FUNC1(EXIT_FAILURE);
        }
    }

    if (monitor)
    {
        const GLFWvidmode* mode = FUNC9(monitor);

        FUNC33(GLFW_REFRESH_RATE, mode->refreshRate);
        FUNC33(GLFW_RED_BITS, mode->redBits);
        FUNC33(GLFW_GREEN_BITS, mode->greenBits);
        FUNC33(GLFW_BLUE_BITS, mode->blueBits);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width  = 640;
        height = 480;
    }

    if (!count)
    {
        FUNC3(stderr, "Invalid user\n");
        FUNC1(EXIT_FAILURE);
    }

    slots = FUNC0(count, sizeof(Slot));

    for (i = 0;  i < count;  i++)
    {
        char title[128];

        slots[i].closeable = GL_TRUE;
        slots[i].number = i + 1;

        FUNC37(title, "Event Linter (Window %i)", slots[i].number);

        if (monitor)
        {
            FUNC35("Creating full screen window %i (%ix%i on %s)\n",
                   slots[i].number,
                   width, height,
                   FUNC7(monitor));
        }
        else
        {
            FUNC35("Creating windowed mode window %i (%ix%i)\n",
                   slots[i].number,
                   width, height);
        }

        slots[i].window = FUNC6(width, height, title, monitor, NULL);
        if (!slots[i].window)
        {
            FUNC4(slots);
            FUNC31();
            FUNC1(EXIT_FAILURE);
        }

        FUNC29(slots[i].window, slots + i);

        FUNC26(slots[i].window, window_pos_callback);
        FUNC28(slots[i].window, window_size_callback);
        FUNC18(slots[i].window, framebuffer_size_callback);
        FUNC23(slots[i].window, window_close_callback);
        FUNC27(slots[i].window, window_refresh_callback);
        FUNC24(slots[i].window, window_focus_callback);
        FUNC25(slots[i].window, window_iconify_callback);
        FUNC21(slots[i].window, mouse_button_callback);
        FUNC15(slots[i].window, cursor_position_callback);
        FUNC14(slots[i].window, cursor_enter_callback);
        FUNC22(slots[i].window, scroll_callback);
        FUNC19(slots[i].window, key_callback);
        FUNC12(slots[i].window, char_callback);
        FUNC13(slots[i].window, char_mods_callback);
        FUNC16(slots[i].window, drop_callback);

        FUNC11(slots[i].window);
        FUNC30(1);
    }

    FUNC35("Main loop starting\n");

    for (;;)
    {
        for (i = 0;  i < count;  i++)
        {
            if (FUNC34(slots[i].window))
                break;
        }

        if (i < count)
            break;

        FUNC32();

        // Workaround for an issue with msvcrt and mintty
        FUNC2(stdout);
    }

    FUNC4(slots);
    FUNC31();
    FUNC1(EXIT_SUCCESS);
}