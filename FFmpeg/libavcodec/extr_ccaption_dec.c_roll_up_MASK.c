#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Screen {scalar_t__ row_used; int /*<<< orphan*/ * charsets; int /*<<< orphan*/ * fonts; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * characters; } ;
struct TYPE_4__ {scalar_t__ mode; int cursor_row; int /*<<< orphan*/  rollup; } ;
typedef  TYPE_1__ CCaptionSubContext ;

/* Variables and functions */
 scalar_t__ CCMODE_TEXT ; 
 scalar_t__ FUNC0 (scalar_t__,int const) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCREEN_COLUMNS ; 
 int SCREEN_ROWS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 struct Screen* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(CCaptionSubContext *ctx)
{
    struct Screen *screen;
    int i, keep_lines;

    if (ctx->mode == CCMODE_TEXT)
        return;

    screen = FUNC4(ctx);

    /* +1 signify cursor_row starts from 0
     * Can't keep lines less then row cursor pos
     */
    keep_lines = FUNC1(ctx->cursor_row + 1, ctx->rollup);

    for (i = 0; i < SCREEN_ROWS; i++) {
        if (i > ctx->cursor_row - keep_lines && i <= ctx->cursor_row)
            continue;
        FUNC3(screen->row_used, i);
    }

    for (i = 0; i < keep_lines && screen->row_used; i++) {
        const int i_row = ctx->cursor_row - keep_lines + i + 1;

        FUNC5(screen->characters[i_row], screen->characters[i_row+1], SCREEN_COLUMNS);
        FUNC5(screen->colors[i_row], screen->colors[i_row+1], SCREEN_COLUMNS);
        FUNC5(screen->fonts[i_row], screen->fonts[i_row+1], SCREEN_COLUMNS);
        FUNC5(screen->charsets[i_row], screen->charsets[i_row+1], SCREEN_COLUMNS);
        if (FUNC0(screen->row_used, i_row + 1))
            FUNC2(screen->row_used, i_row);
    }

    FUNC3(screen->row_used, ctx->cursor_row);
}