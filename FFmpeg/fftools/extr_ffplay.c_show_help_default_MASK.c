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
 int /*<<< orphan*/  AV_OPT_FLAG_DECODING_PARAM ; 
 int /*<<< orphan*/  AV_OPT_FLAG_ENCODING_PARAM ; 
 int /*<<< orphan*/  AV_OPT_FLAG_FILTERING_PARAM ; 
 int /*<<< orphan*/  OPT_EXPERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  log_callback_help ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(const char *opt, const char *arg)
{
    FUNC0(log_callback_help);
    FUNC7();
    FUNC6(options, "Main options:", 0, OPT_EXPERT, 0);
    FUNC6(options, "Advanced options:", OPT_EXPERT, 0, 0);
    FUNC4("\n");
    FUNC5(FUNC1(), AV_OPT_FLAG_DECODING_PARAM);
    FUNC5(FUNC3(), AV_OPT_FLAG_DECODING_PARAM);
#if !CONFIG_AVFILTER
    FUNC5(FUNC8(), AV_OPT_FLAG_ENCODING_PARAM);
#else
    show_help_children(avfilter_get_class(), AV_OPT_FLAG_FILTERING_PARAM);
#endif
    FUNC4("\nWhile playing:\n"
           "q, ESC              quit\n"
           "f                   toggle full screen\n"
           "p, SPC              pause\n"
           "m                   toggle mute\n"
           "9, 0                decrease and increase volume respectively\n"
           "/, *                decrease and increase volume respectively\n"
           "a                   cycle audio channel in the current program\n"
           "v                   cycle video channel\n"
           "t                   cycle subtitle channel in the current program\n"
           "c                   cycle program\n"
           "w                   cycle video filters or show modes\n"
           "s                   activate frame-step mode\n"
           "left/right          seek backward/forward 10 seconds or to custom interval if -seek_interval is set\n"
           "down/up             seek backward/forward 1 minute\n"
           "page down/page up   seek backward/forward 10 minutes\n"
           "right mouse click   seek to percentage in file corresponding to fraction of width\n"
           "left double-click   toggle full screen\n"
           );
}