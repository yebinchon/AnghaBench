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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DEFAULT_HEIGHT ; 
 int DEFAULT_NB_PICT ; 
 int DEFAULT_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int height ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  rgb_tab ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int width ; 
 int wrap ; 

int FUNC8(int argc, char **argv)
{
    int w, h, i;
    char buf[1024];
    int isdir = 0;

    if (argc != 3) {
        FUNC6("usage: %s image.pnm file|dir\n"
               "generate a test video stream\n", argv[0]);
        return 1;
    }

    if (!FUNC1(argv[2], "wb", stdout))
        isdir = 1;

    w = DEFAULT_WIDTH;
    h = DEFAULT_HEIGHT;

    rgb_tab = FUNC4(w * h * 3);
    wrap    = w * 3;
    width   = w;
    height  = h;

    if (FUNC3(argv[1]))
        return 1;

    for (i = 0; i < DEFAULT_NB_PICT; i++) {
        FUNC2(i, w, h);
        if (isdir) {
            FUNC7(buf, sizeof(buf), "%s%02d.pgm", argv[2], i);
            FUNC5(buf, w, h, rgb_tab);
        } else {
            FUNC5(NULL, w, h, rgb_tab);
        }
    }

    FUNC0(rgb_tab);
    return 0;
}