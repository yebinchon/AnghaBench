#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Screen {char** characters; char** charsets; char** fonts; scalar_t__ row_used; } ;
typedef  enum cc_font { ____Placeholder_cc_font } cc_font ;
struct TYPE_7__ {int len; scalar_t__* str; } ;
struct TYPE_6__ {int active_screen; int buffer_changed; TYPE_3__ buffer; struct Screen* screen; } ;
typedef  TYPE_1__ CCaptionSubContext ;

/* Variables and functions */
 double ASS_DEFAULT_PLAYRESX ; 
 double ASS_DEFAULT_PLAYRESY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CCFONT_ITALICS 130 
 int CCFONT_REGULAR ; 
#define  CCFONT_UNDERLINED 129 
#define  CCFONT_UNDERLINED_ITALICS 128 
 char const CCSET_BASIC_AMERICAN ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int SCREEN_COLUMNS ; 
 int SCREEN_ROWS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 char*** charset_overrides ; 

__attribute__((used)) static int FUNC5(CCaptionSubContext *ctx)
{
    int i, j, tab = 0;
    struct Screen *screen = ctx->screen + ctx->active_screen;
    enum cc_font prev_font = CCFONT_REGULAR;
    FUNC2(&ctx->buffer);

    for (i = 0; screen->row_used && i < SCREEN_ROWS; i++)
    {
        if (FUNC1(screen->row_used, i)) {
            const char *row = screen->characters[i];
            const char *charset = screen->charsets[i];
            j = 0;
            while (row[j] == ' ' && charset[j] == CCSET_BASIC_AMERICAN)
                j++;
            if (!tab || j < tab)
                tab = j;
        }
    }

    for (i = 0; screen->row_used && i < SCREEN_ROWS; i++)
    {
        if (FUNC1(screen->row_used, i)) {
            const char *row = screen->characters[i];
            const char *font = screen->fonts[i];
            const char *charset = screen->charsets[i];
            const char *override;
            int x, y, seen_char = 0;
            j = 0;

            /* skip leading space */
            while (row[j] == ' ' && charset[j] == CCSET_BASIC_AMERICAN && j < tab)
                j++;

            x = ASS_DEFAULT_PLAYRESX * (0.1 + 0.0250 * j);
            y = ASS_DEFAULT_PLAYRESY * (0.1 + 0.0533 * i);
            FUNC4(&ctx->buffer, "{\\an7}{\\pos(%d,%d)}", x, y);

            for (; j < SCREEN_COLUMNS; j++) {
                const char *e_tag = "", *s_tag = "";

                if (row[j] == 0)
                    break;

                if (prev_font != font[j]) {
                    switch (prev_font) {
                    case CCFONT_ITALICS:
                        e_tag = "{\\i0}";
                        break;
                    case CCFONT_UNDERLINED:
                        e_tag = "{\\u0}";
                        break;
                    case CCFONT_UNDERLINED_ITALICS:
                        e_tag = "{\\u0}{\\i0}";
                        break;
                    }
                    switch (font[j]) {
                    case CCFONT_ITALICS:
                        s_tag = "{\\i1}";
                        break;
                    case CCFONT_UNDERLINED:
                        s_tag = "{\\u1}";
                        break;
                    case CCFONT_UNDERLINED_ITALICS:
                        s_tag = "{\\u1}{\\i1}";
                        break;
                    }
                }
                prev_font = font[j];
                override = charset_overrides[(int)charset[j]][(int)row[j]];
                if (override) {
                    FUNC4(&ctx->buffer, "%s%s%s", e_tag, s_tag, override);
                    seen_char = 1;
                } else if (row[j] == ' ' && !seen_char) {
                    FUNC4(&ctx->buffer, "%s%s\\h", e_tag, s_tag);
                } else {
                    FUNC4(&ctx->buffer, "%s%s%c", e_tag, s_tag, row[j]);
                    seen_char = 1;
                }

            }
            FUNC4(&ctx->buffer, "\\N");
        }
    }
    if (!FUNC3(&ctx->buffer))
        return FUNC0(ENOMEM);
    if (screen->row_used && ctx->buffer.len >= 2) {
        ctx->buffer.len -= 2;
        ctx->buffer.str[ctx->buffer.len] = 0;
    }
    ctx->buffer_changed = 1;
    return 0;
}