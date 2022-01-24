#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int palette_has_changed; int* data; int* linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_12__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int y; int nb_args; int* args; int font_height; int x; int attributes; size_t fg; size_t bg; int sx; int sy; TYPE_5__* frame; void* font; } ;
typedef  TYPE_1__ AnsiContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 size_t DEFAULT_BG_COLOR ; 
 size_t DEFAULT_FG_COLOR ; 
 int DEFAULT_SCREEN_MODE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FONT_WIDTH ; 
 int MAX_NB_ARGS ; 
 int* ansi_to_cga ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 void* avpriv_cga_font ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 void* avpriv_vga16_font ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AVCodecContext * avctx, int c)
{
    AnsiContext *s = avctx->priv_data;
    int ret, i;
    int width  = avctx->width;
    int height = avctx->height;

    switch(c) {
    case 'A': //Cursor Up
        s->y = FUNC0(s->y - (s->nb_args > 0 ? s->args[0]*s->font_height : s->font_height), 0);
        break;
    case 'B': //Cursor Down
        s->y = FUNC1(s->y + (s->nb_args > 0 ? s->args[0]*s->font_height : s->font_height), avctx->height - s->font_height);
        break;
    case 'C': //Cursor Right
        s->x = FUNC1(s->x + (s->nb_args > 0 ? s->args[0]*FONT_WIDTH : FONT_WIDTH), avctx->width  - FONT_WIDTH);
        break;
    case 'D': //Cursor Left
        s->x = FUNC0(s->x - (s->nb_args > 0 ? s->args[0]*FONT_WIDTH : FONT_WIDTH), 0);
        break;
    case 'H': //Cursor Position
    case 'f': //Horizontal and Vertical Position
        s->y = s->nb_args > 0 ? FUNC2((s->args[0] - 1)*s->font_height, 0, avctx->height - s->font_height) : 0;
        s->x = s->nb_args > 1 ? FUNC2((s->args[1] - 1)*FONT_WIDTH,     0, avctx->width  - FONT_WIDTH) : 0;
        break;
    case 'h': //set screen mode
    case 'l': //reset screen mode
        if (s->nb_args < 2)
            s->args[0] = DEFAULT_SCREEN_MODE;
        switch(s->args[0]) {
        case 0: case 1: case 4: case 5: case 13: case 19: //320x200 (25 rows)
            s->font = avpriv_cga_font;
            s->font_height = 8;
            width  = 40<<3;
            height = 25<<3;
            break;
        case 2: case 3: //640x400 (25 rows)
            s->font = avpriv_vga16_font;
            s->font_height = 16;
            width  = 80<<3;
            height = 25<<4;
            break;
        case 6: case 14: //640x200 (25 rows)
            s->font = avpriv_cga_font;
            s->font_height = 8;
            width  = 80<<3;
            height = 25<<3;
            break;
        case 7: //set line wrapping
            break;
        case 15: case 16: //640x350 (43 rows)
            s->font = avpriv_cga_font;
            s->font_height = 8;
            width  = 80<<3;
            height = 43<<3;
            break;
        case 17: case 18: //640x480 (60 rows)
            s->font = avpriv_cga_font;
            s->font_height = 8;
            width  = 80<<3;
            height = 60<<4;
            break;
        default:
            FUNC4(avctx, "Unsupported screen mode");
        }
        s->x = FUNC2(s->x, 0, width  - FONT_WIDTH);
        s->y = FUNC2(s->y, 0, height - s->font_height);
        if (width != avctx->width || height != avctx->height) {
            FUNC3(s->frame);
            ret = FUNC8(avctx, width, height);
            if (ret < 0)
                return ret;
            if ((ret = FUNC7(avctx, s->frame,
                                     AV_GET_BUFFER_FLAG_REF)) < 0)
                return ret;
            s->frame->pict_type           = AV_PICTURE_TYPE_I;
            s->frame->palette_has_changed = 1;
            FUNC10((uint32_t *)s->frame->data[1]);
            FUNC6(avctx);
        } else if (c == 'l') {
            FUNC6(avctx);
        }
        break;
    case 'J': //Erase in Page
        switch (s->args[0]) {
        case 0:
            FUNC5(avctx, s->x, avctx->width - s->x);
            if (s->y < avctx->height - s->font_height)
                FUNC9(s->frame->data[0] + (s->y + s->font_height)*s->frame->linesize[0],
                    DEFAULT_BG_COLOR, (avctx->height - s->y - s->font_height)*s->frame->linesize[0]);
            break;
        case 1:
            FUNC5(avctx, 0, s->x);
            if (s->y > 0)
                FUNC9(s->frame->data[0], DEFAULT_BG_COLOR, s->y * s->frame->linesize[0]);
            break;
        case 2:
            FUNC6(avctx);
        }
        break;
    case 'K': //Erase in Line
        switch(s->args[0]) {
        case 0:
            FUNC5(avctx, s->x, avctx->width - s->x);
            break;
        case 1:
            FUNC5(avctx, 0, s->x);
            break;
        case 2:
            FUNC5(avctx, 0, avctx->width);
        }
        break;
    case 'm': //Select Graphics Rendition
        if (s->nb_args == 0) {
            s->nb_args = 1;
            s->args[0] = 0;
        }
        for (i = 0; i < FUNC1(s->nb_args, MAX_NB_ARGS); i++) {
            int m = s->args[i];
            if (m == 0) {
                s->attributes = 0;
                s->fg = DEFAULT_FG_COLOR;
                s->bg = DEFAULT_BG_COLOR;
            } else if (m == 1 || m == 2 || m == 4 || m == 5 || m == 7 || m == 8) {
                s->attributes |= 1 << (m - 1);
            } else if (m >= 30 && m <= 37) {
                s->fg = ansi_to_cga[m - 30];
            } else if (m == 38 && i + 2 < FUNC1(s->nb_args, MAX_NB_ARGS) && s->args[i + 1] == 5 && s->args[i + 2] < 256) {
                int index = s->args[i + 2];
                s->fg = index < 16 ? ansi_to_cga[index] : index;
                i += 2;
            } else if (m == 39) {
                s->fg = ansi_to_cga[DEFAULT_FG_COLOR];
            } else if (m >= 40 && m <= 47) {
                s->bg = ansi_to_cga[m - 40];
            } else if (m == 48 && i + 2 < FUNC1(s->nb_args, MAX_NB_ARGS) && s->args[i + 1] == 5 && s->args[i + 2] < 256) {
                int index = s->args[i + 2];
                s->bg = index < 16 ? ansi_to_cga[index] : index;
                i += 2;
            } else if (m == 49) {
                s->fg = ansi_to_cga[DEFAULT_BG_COLOR];
            } else {
                FUNC4(avctx, "Unsupported rendition parameter");
            }
        }
        break;
    case 'n': //Device Status Report
    case 'R': //report current line and column
        /* ignore */
        break;
    case 's': //Save Cursor Position
        s->sx = s->x;
        s->sy = s->y;
        break;
    case 'u': //Restore Cursor Position
        s->x = FUNC2(s->sx, 0, avctx->width  - FONT_WIDTH);
        s->y = FUNC2(s->sy, 0, avctx->height - s->font_height);
        break;
    default:
        FUNC4(avctx, "Unknown escape code");
        break;
    }
    s->x = FUNC2(s->x, 0, avctx->width  - FONT_WIDTH);
    s->y = FUNC2(s->y, 0, avctx->height - s->font_height);
    return 0;
}