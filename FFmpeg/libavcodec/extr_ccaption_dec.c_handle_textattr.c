
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct Screen {int row_used; } ;
struct TYPE_5__ {int cursor_row; void* cursor_font; void* cursor_color; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int SET_FLAG (int ,int ) ;
 struct Screen* get_writing_screen (TYPE_1__*) ;
 void*** pac2_attribs ;
 int write_char (TYPE_1__*,struct Screen*,char) ;

__attribute__((used)) static void handle_textattr(CCaptionSubContext *ctx, uint8_t hi, uint8_t lo)
{
    int i = lo - 0x20;
    struct Screen *screen = get_writing_screen(ctx);

    if (i >= 32)
        return;

    ctx->cursor_color = pac2_attribs[i][0];
    ctx->cursor_font = pac2_attribs[i][1];

    SET_FLAG(screen->row_used, ctx->cursor_row);
    write_char(ctx, screen, ' ');
}
