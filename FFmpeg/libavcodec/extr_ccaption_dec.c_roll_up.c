
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Screen {scalar_t__ row_used; int * charsets; int * fonts; int * colors; int * characters; } ;
struct TYPE_4__ {scalar_t__ mode; int cursor_row; int rollup; } ;
typedef TYPE_1__ CCaptionSubContext ;


 scalar_t__ CCMODE_TEXT ;
 scalar_t__ CHECK_FLAG (scalar_t__,int const) ;
 int FFMIN (int,int ) ;
 int SCREEN_COLUMNS ;
 int SCREEN_ROWS ;
 int SET_FLAG (scalar_t__,int const) ;
 int UNSET_FLAG (scalar_t__,int) ;
 struct Screen* get_writing_screen (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void roll_up(CCaptionSubContext *ctx)
{
    struct Screen *screen;
    int i, keep_lines;

    if (ctx->mode == CCMODE_TEXT)
        return;

    screen = get_writing_screen(ctx);




    keep_lines = FFMIN(ctx->cursor_row + 1, ctx->rollup);

    for (i = 0; i < SCREEN_ROWS; i++) {
        if (i > ctx->cursor_row - keep_lines && i <= ctx->cursor_row)
            continue;
        UNSET_FLAG(screen->row_used, i);
    }

    for (i = 0; i < keep_lines && screen->row_used; i++) {
        const int i_row = ctx->cursor_row - keep_lines + i + 1;

        memcpy(screen->characters[i_row], screen->characters[i_row+1], SCREEN_COLUMNS);
        memcpy(screen->colors[i_row], screen->colors[i_row+1], SCREEN_COLUMNS);
        memcpy(screen->fonts[i_row], screen->fonts[i_row+1], SCREEN_COLUMNS);
        memcpy(screen->charsets[i_row], screen->charsets[i_row+1], SCREEN_COLUMNS);
        if (CHECK_FLAG(screen->row_used, i_row + 1))
            SET_FLAG(screen->row_used, i_row);
    }

    UNSET_FLAG(screen->row_used, ctx->cursor_row);
}
