#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct Screen {int /*<<< orphan*/  row_used; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {int* prev_cmd; int rollup; int /*<<< orphan*/  active_screen; struct Screen* screen; int /*<<< orphan*/  real_time; int /*<<< orphan*/  cursor_column; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ CCaptionSubContext ;

/* Variables and functions */
 int /*<<< orphan*/  CCMODE_PAINTON ; 
 int /*<<< orphan*/  CCMODE_POPON ; 
 int /*<<< orphan*/  CCMODE_ROLLUP ; 
 int /*<<< orphan*/  CCMODE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(CCaptionSubContext *ctx, int64_t pts, uint8_t hi, uint8_t lo)
{
    if (hi == ctx->prev_cmd[0] && lo == ctx->prev_cmd[1]) {
        /* ignore redundant command */
        return;
    }

    /* set prev command */
    ctx->prev_cmd[0] = hi;
    ctx->prev_cmd[1] = lo;

    if ( (hi == 0x10 && (lo >= 0x40 && lo <= 0x5f)) ||
       ( (hi >= 0x11 && hi <= 0x17) && (lo >= 0x40 && lo <= 0x7f) ) ) {
        FUNC5(ctx, hi, lo);
    } else if ( ( hi == 0x11 && lo >= 0x20 && lo <= 0x2f ) ||
                ( hi == 0x17 && lo >= 0x2e && lo <= 0x2f) ) {
        FUNC6(ctx, hi, lo);
    } else if (hi == 0x14 || hi == 0x15 || hi == 0x1c) {
        switch (lo) {
        case 0x20:
            /* resume caption loading */
            ctx->mode = CCMODE_POPON;
            break;
        case 0x24:
            FUNC2(ctx, hi, lo);
            break;
        case 0x25:
        case 0x26:
        case 0x27:
            ctx->rollup = lo - 0x23;
            ctx->mode = CCMODE_ROLLUP;
            break;
        case 0x29:
            /* resume direct captioning */
            ctx->mode = CCMODE_PAINTON;
            break;
        case 0x2b:
            /* resume text display */
            ctx->mode = CCMODE_TEXT;
            break;
        case 0x2c:
            /* erase display memory */
            FUNC3(ctx, pts);
            break;
        case 0x2d:
            /* carriage return */
            FUNC0(ctx, "carriage return\n");
            if (!ctx->real_time)
                FUNC7(ctx, pts);
            FUNC8(ctx);
            ctx->cursor_column = 0;
            break;
        case 0x2e:
            /* erase buffered (non displayed) memory */
            // Only in realtime mode. In buffered mode, we re-use the inactive screen
            // for our own buffering.
            if (ctx->real_time) {
                struct Screen *screen = ctx->screen + !ctx->active_screen;
                screen->row_used = 0;
            }
            break;
        case 0x2f:
            /* end of caption */
            FUNC0(ctx, "handle_eoc\n");
            FUNC4(ctx, pts);
            break;
        default:
            FUNC0(ctx, "Unknown command 0x%hhx 0x%hhx\n", hi, lo);
            break;
        }
    } else if (hi >= 0x11 && hi <= 0x13) {
        /* Special characters */
        FUNC1(ctx, hi, lo, pts);
    } else if (hi >= 0x20) {
        /* Standard characters (always in pairs) */
        FUNC1(ctx, hi, lo, pts);
        ctx->prev_cmd[0] = ctx->prev_cmd[1] = 0;
    } else if (hi == 0x17 && lo >= 0x21 && lo <= 0x23) {
        int i;
        /* Tab offsets (spacing) */
        for (i = 0; i < lo - 0x20; i++) {
            FUNC1(ctx, ' ', 0, pts);
        }
    } else {
        /* Ignoring all other non data code */
        FUNC0(ctx, "Unknown command 0x%hhx 0x%hhx\n", hi, lo);
    }
}