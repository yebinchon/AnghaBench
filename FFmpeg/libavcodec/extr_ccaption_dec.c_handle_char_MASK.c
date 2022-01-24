#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Screen {int /*<<< orphan*/  row_used; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int cursor_column; scalar_t__ mode; int screen_touched; int /*<<< orphan*/  cursor_charset; int /*<<< orphan*/  cursor_row; } ;
typedef  TYPE_1__ CCaptionSubContext ;

/* Variables and functions */
 scalar_t__ CCMODE_POPON ; 
 int /*<<< orphan*/  CCSET_BASIC_AMERICAN ; 
 int /*<<< orphan*/  CCSET_EXTENDED_PORTUGUESE_GERMAN_DANISH ; 
 int /*<<< orphan*/  CCSET_EXTENDED_SPANISH_FRENCH_MISC ; 
 int /*<<< orphan*/  CCSET_SPECIAL_AMERICAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char,...) ; 
 struct Screen* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct Screen*,char) ; 

__attribute__((used)) static void FUNC4(CCaptionSubContext *ctx, char hi, char lo, int64_t pts)
{
    struct Screen *screen = FUNC2(ctx);

    FUNC0(screen->row_used, ctx->cursor_row);

    switch (hi) {
      case 0x11:
        ctx->cursor_charset = CCSET_SPECIAL_AMERICAN;
        break;
      case 0x12:
        if (ctx->cursor_column > 0)
            ctx->cursor_column -= 1;
        ctx->cursor_charset = CCSET_EXTENDED_SPANISH_FRENCH_MISC;
        break;
      case 0x13:
        if (ctx->cursor_column > 0)
            ctx->cursor_column -= 1;
        ctx->cursor_charset = CCSET_EXTENDED_PORTUGUESE_GERMAN_DANISH;
        break;
      default:
        ctx->cursor_charset = CCSET_BASIC_AMERICAN;
        FUNC3(ctx, screen, hi);
        break;
    }

    if (lo) {
        FUNC3(ctx, screen, lo);
    }
    FUNC3(ctx, screen, 0);

    if (ctx->mode != CCMODE_POPON)
        ctx->screen_touched = 1;

    if (lo)
       FUNC1(ctx, "(%c,%c)\n", hi, lo);
    else
       FUNC1(ctx, "(%c)\n", hi);
}