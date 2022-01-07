
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct Screen {int row_used; } ;
typedef int int64_t ;
struct TYPE_6__ {int cursor_column; scalar_t__ mode; int screen_touched; int cursor_charset; int cursor_row; } ;
typedef TYPE_1__ CCaptionSubContext ;


 scalar_t__ CCMODE_POPON ;
 int CCSET_BASIC_AMERICAN ;
 int CCSET_EXTENDED_PORTUGUESE_GERMAN_DANISH ;
 int CCSET_EXTENDED_SPANISH_FRENCH_MISC ;
 int CCSET_SPECIAL_AMERICAN ;
 int SET_FLAG (int ,int ) ;
 int ff_dlog (TYPE_1__*,char*,char,...) ;
 struct Screen* get_writing_screen (TYPE_1__*) ;
 int write_char (TYPE_1__*,struct Screen*,char) ;

__attribute__((used)) static void handle_char(CCaptionSubContext *ctx, char hi, char lo, int64_t pts)
{
    struct Screen *screen = get_writing_screen(ctx);

    SET_FLAG(screen->row_used, ctx->cursor_row);

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
        write_char(ctx, screen, hi);
        break;
    }

    if (lo) {
        write_char(ctx, screen, lo);
    }
    write_char(ctx, screen, 0);

    if (ctx->mode != CCMODE_POPON)
        ctx->screen_touched = 1;

    if (lo)
       ff_dlog(ctx, "(%c,%c)\n", hi, lo);
    else
       ff_dlog(ctx, "(%c)\n", hi);
}
