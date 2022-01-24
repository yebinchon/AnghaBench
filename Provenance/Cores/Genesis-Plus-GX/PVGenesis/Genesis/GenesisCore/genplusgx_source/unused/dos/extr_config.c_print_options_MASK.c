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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(void)
{
    FUNC0(" -vdriver <s>        \t Select video driver (auto)\n");
    FUNC0(" -res <w> <h>        \t Specify display resolution (320x240)\n");
    FUNC0(" -depth <n>          \t Specify display depth (8)\n");
    FUNC0(" -remap <on|off>     \t Enable raster-based palette effects (8-bit color only)\n");
    FUNC0(" -scanlines <on|off> \t Enable scanlines effect\n");
    FUNC0(" -scale <on|off>     \t Scale display to width of screen\n");
    FUNC0(" -vsync <on|off>     \t Enable vsync polling\n");
    FUNC0(" -throttle <on|off>  \t Enable speed throttling\n");
    FUNC0(" -skip <n>           \t Specify frame skip level (1=no frames skipped)\n");
    FUNC0(" -sound <on|off>     \t Enable sound output\n");
    FUNC0(" -sndcard <n>        \t Select sound card\n");
    FUNC0(" -sndrate <n>        \t Specify sound sample rate (8000-44100)\n");
    FUNC0(" -swap <on|off>      \t Swap left and right channels\n");
    FUNC0(" -joy <s>            \t Select joystick driver (auto)\n");
}