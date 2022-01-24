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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned char*,unsigned char const*,int,int) ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC8(const char *filename, int w, int h,
                        const unsigned char *rgb_tab)
{
    FILE *f;
    int i, h2, w2;
    unsigned char *cb, *cr;
    unsigned char *lum_tab, *cb_tab, *cr_tab;

    lum_tab = FUNC6(w * h);
    cb_tab  = FUNC6(w * h / 4);
    cr_tab  = FUNC6(w * h / 4);

    FUNC7(lum_tab, cb_tab, cr_tab, rgb_tab, w, h);

    if (filename) {
        f = FUNC2(filename, "wb");
        FUNC3(f, "P5\n%d %d\n%d\n", w, h * 3 / 2, 255);
    } else {
        f = stdout;
    }

    FUNC0(FUNC5(lum_tab, 1, w * h, f) != w * h);
    h2 = h / 2;
    w2 = w / 2;
    cb = cb_tab;
    cr = cr_tab;

    if (filename) {
        for (i = 0; i < h2; i++) {
            FUNC0(FUNC5(cb, 1, w2, f) != w2);
            FUNC0(FUNC5(cr, 1, w2, f) != w2);
            cb += w2;
            cr += w2;
        }
        FUNC1(f);
    } else {
        for (i = 0; i < h2; i++) {
            FUNC0(FUNC5(cb, 1, w2, f) != w2);
            cb += w2;
        }
        for (i = 0; i < h2; i++) {
            FUNC0(FUNC5(cr, 1, w2, f) != w2);
            cr += w2;
        }
    }

    FUNC4(lum_tab);
    FUNC4(cb_tab);
    FUNC4(cr_tab);
}