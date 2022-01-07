
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct Screen {char** characters; char** fonts; char** charsets; } ;
struct TYPE_4__ {size_t cursor_column; size_t cursor_row; char cursor_font; char cursor_charset; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int AV_LOG_WARNING ;
 char CCSET_BASIC_AMERICAN ;
 size_t SCREEN_COLUMNS ;
 int av_log (TYPE_1__*,int ,char*) ;

__attribute__((used)) static void write_char(CCaptionSubContext *ctx, struct Screen *screen, char ch)
{
    uint8_t col = ctx->cursor_column;
    char *row = screen->characters[ctx->cursor_row];
    char *font = screen->fonts[ctx->cursor_row];
    char *charset = screen->charsets[ctx->cursor_row];

    if (col < SCREEN_COLUMNS) {
        row[col] = ch;
        font[col] = ctx->cursor_font;
        charset[col] = ctx->cursor_charset;
        ctx->cursor_charset = CCSET_BASIC_AMERICAN;
        if (ch) ctx->cursor_column++;
        return;
    }

    else if (col == SCREEN_COLUMNS && ch == 0) {
        row[col] = ch;
        return;
    }
    else {
        av_log(ctx, AV_LOG_WARNING, "Data Ignored since exceeding screen width\n");
        return;
    }
}
