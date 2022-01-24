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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int height ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
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

    if (argc < 2 || argc > 4) {
        FUNC6(argv[0]);
    }

    if (!FUNC2(argv[1], "wb", stdout))
        isdir = 1;

    w = DEFAULT_WIDTH;
    if(argc > 2) {
        w = FUNC0(argv[2]);
        if (w < 1) FUNC6(argv[0]);
    }
    h = DEFAULT_HEIGHT;
    if(argc > 3) {
        h = FUNC0(argv[3]);
        if (h < 1) FUNC6(argv[0]);
    }

    rgb_tab = FUNC4(w * h * 3);
    wrap    = w * 3;
    width   = w;
    height  = h;

    for (i = 0; i < DEFAULT_NB_PICT; i++) {
        FUNC3(i, w, h);
        if (isdir) {
            FUNC7(buf, sizeof(buf), "%s%02d.pgm", argv[1], i);
            FUNC5(buf, w, h, rgb_tab);
        } else {
            FUNC5(NULL, w, h, rgb_tab);
        }
    }

    FUNC1(rgb_tab);
    return 0;
}