
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct Screen {int row_used; } ;
typedef int int64_t ;
struct TYPE_12__ {int* prev_cmd; int rollup; int active_screen; struct Screen* screen; int real_time; int cursor_column; int mode; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int CCMODE_PAINTON ;
 int CCMODE_POPON ;
 int CCMODE_ROLLUP ;
 int CCMODE_TEXT ;
 int ff_dlog (TYPE_1__*,char*,...) ;
 int handle_char (TYPE_1__*,char,int,int ) ;
 int handle_delete_end_of_row (TYPE_1__*,int,int) ;
 int handle_edm (TYPE_1__*,int ) ;
 int handle_eoc (TYPE_1__*,int ) ;
 int handle_pac (TYPE_1__*,int,int) ;
 int handle_textattr (TYPE_1__*,int,int) ;
 int reap_screen (TYPE_1__*,int ) ;
 int roll_up (TYPE_1__*) ;

__attribute__((used)) static void process_cc608(CCaptionSubContext *ctx, int64_t pts, uint8_t hi, uint8_t lo)
{
    if (hi == ctx->prev_cmd[0] && lo == ctx->prev_cmd[1]) {

        return;
    }


    ctx->prev_cmd[0] = hi;
    ctx->prev_cmd[1] = lo;

    if ( (hi == 0x10 && (lo >= 0x40 && lo <= 0x5f)) ||
       ( (hi >= 0x11 && hi <= 0x17) && (lo >= 0x40 && lo <= 0x7f) ) ) {
        handle_pac(ctx, hi, lo);
    } else if ( ( hi == 0x11 && lo >= 0x20 && lo <= 0x2f ) ||
                ( hi == 0x17 && lo >= 0x2e && lo <= 0x2f) ) {
        handle_textattr(ctx, hi, lo);
    } else if (hi == 0x14 || hi == 0x15 || hi == 0x1c) {
        switch (lo) {
        case 0x20:

            ctx->mode = CCMODE_POPON;
            break;
        case 0x24:
            handle_delete_end_of_row(ctx, hi, lo);
            break;
        case 0x25:
        case 0x26:
        case 0x27:
            ctx->rollup = lo - 0x23;
            ctx->mode = CCMODE_ROLLUP;
            break;
        case 0x29:

            ctx->mode = CCMODE_PAINTON;
            break;
        case 0x2b:

            ctx->mode = CCMODE_TEXT;
            break;
        case 0x2c:

            handle_edm(ctx, pts);
            break;
        case 0x2d:

            ff_dlog(ctx, "carriage return\n");
            if (!ctx->real_time)
                reap_screen(ctx, pts);
            roll_up(ctx);
            ctx->cursor_column = 0;
            break;
        case 0x2e:



            if (ctx->real_time) {
                struct Screen *screen = ctx->screen + !ctx->active_screen;
                screen->row_used = 0;
            }
            break;
        case 0x2f:

            ff_dlog(ctx, "handle_eoc\n");
            handle_eoc(ctx, pts);
            break;
        default:
            ff_dlog(ctx, "Unknown command 0x%hhx 0x%hhx\n", hi, lo);
            break;
        }
    } else if (hi >= 0x11 && hi <= 0x13) {

        handle_char(ctx, hi, lo, pts);
    } else if (hi >= 0x20) {

        handle_char(ctx, hi, lo, pts);
        ctx->prev_cmd[0] = ctx->prev_cmd[1] = 0;
    } else if (hi == 0x17 && lo >= 0x21 && lo <= 0x23) {
        int i;

        for (i = 0; i < lo - 0x20; i++) {
            handle_char(ctx, ' ', 0, pts);
        }
    } else {

        ff_dlog(ctx, "Unknown command 0x%hhx 0x%hhx\n", hi, lo);
    }
}
