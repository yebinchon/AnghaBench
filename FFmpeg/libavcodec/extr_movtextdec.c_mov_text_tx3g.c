
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_16__ {int fontID; int font; } ;
struct TYPE_15__ {char* font; void* fontID; } ;
struct TYPE_14__ {int extradata_size; int * extradata; } ;
struct TYPE_11__ {int bold; int italic; int underline; int font; void* color; int fontsize; void* back_color; int alignment; } ;
struct TYPE_13__ {int ftab_entries; TYPE_9__** ftab; TYPE_1__ d; TYPE_8__* ftab_temp; scalar_t__ count_f; } ;
struct TYPE_12__ {int style_flag; } ;
typedef TYPE_2__ StyleBox ;
typedef TYPE_3__ MovTextContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 void* AV_RB16 (int *) ;
 void* AV_RB24 (int *) ;
 int BOTTOM_CENTER ;
 int BOTTOM_LEFT ;
 int BOTTOM_RIGHT ;
 int BOX_SIZE_INITIAL ;
 int ENOMEM ;
 int MIDDLE_CENTER ;
 int MIDDLE_LEFT ;
 int MIDDLE_RIGHT ;
 int STYLE_FLAG_BOLD ;
 int STYLE_FLAG_ITALIC ;
 int STYLE_FLAG_UNDERLINE ;
 int TOP_CENTER ;
 int TOP_LEFT ;
 int TOP_RIGHT ;
 int av_dynarray_add (TYPE_9__***,scalar_t__*,TYPE_8__*) ;
 char* av_malloc (int) ;
 TYPE_8__* av_mallocz (int) ;
 int memcpy (char*,int *,int) ;
 int mov_text_cleanup_ftab (TYPE_3__*) ;

__attribute__((used)) static int mov_text_tx3g(AVCodecContext *avctx, MovTextContext *m)
{
    uint8_t *tx3g_ptr = avctx->extradata;
    int i, box_size, font_length;
    int8_t v_align, h_align;
    int style_fontID;
    StyleBox s_default;

    m->count_f = 0;
    m->ftab_entries = 0;
    box_size = BOX_SIZE_INITIAL;
    if (avctx->extradata_size < box_size)
        return -1;


    tx3g_ptr += 4;

    h_align = *tx3g_ptr++;
    v_align = *tx3g_ptr++;
    if (h_align == 0) {
        if (v_align == 0)
            m->d.alignment = TOP_LEFT;
        if (v_align == 1)
            m->d.alignment = MIDDLE_LEFT;
        if (v_align == -1)
            m->d.alignment = BOTTOM_LEFT;
    }
    if (h_align == 1) {
        if (v_align == 0)
            m->d.alignment = TOP_CENTER;
        if (v_align == 1)
            m->d.alignment = MIDDLE_CENTER;
        if (v_align == -1)
            m->d.alignment = BOTTOM_CENTER;
    }
    if (h_align == -1) {
        if (v_align == 0)
            m->d.alignment = TOP_RIGHT;
        if (v_align == 1)
            m->d.alignment = MIDDLE_RIGHT;
        if (v_align == -1)
            m->d.alignment = BOTTOM_RIGHT;
    }

    m->d.back_color = AV_RB24(tx3g_ptr);
    tx3g_ptr += 4;

    tx3g_ptr += 8;

    tx3g_ptr += 4;

    style_fontID = AV_RB16(tx3g_ptr);
    tx3g_ptr += 2;

    s_default.style_flag = *tx3g_ptr++;
    m->d.bold = s_default.style_flag & STYLE_FLAG_BOLD;
    m->d.italic = s_default.style_flag & STYLE_FLAG_ITALIC;
    m->d.underline = s_default.style_flag & STYLE_FLAG_UNDERLINE;

    m->d.fontsize = *tx3g_ptr++;

    m->d.color = AV_RB24(tx3g_ptr);
    tx3g_ptr += 4;


    tx3g_ptr += 4;

    tx3g_ptr += 4;

    m->ftab_entries = AV_RB16(tx3g_ptr);
    tx3g_ptr += 2;

    for (i = 0; i < m->ftab_entries; i++) {

        box_size += 3;
        if (avctx->extradata_size < box_size) {
            mov_text_cleanup_ftab(m);
            m->ftab_entries = 0;
            return -1;
        }
        m->ftab_temp = av_mallocz(sizeof(*m->ftab_temp));
        if (!m->ftab_temp) {
            mov_text_cleanup_ftab(m);
            return AVERROR(ENOMEM);
        }
        m->ftab_temp->fontID = AV_RB16(tx3g_ptr);
        tx3g_ptr += 2;
        font_length = *tx3g_ptr++;

        box_size = box_size + font_length;
        if (avctx->extradata_size < box_size) {
            mov_text_cleanup_ftab(m);
            m->ftab_entries = 0;
            return -1;
        }
        m->ftab_temp->font = av_malloc(font_length + 1);
        if (!m->ftab_temp->font) {
            mov_text_cleanup_ftab(m);
            return AVERROR(ENOMEM);
        }
        memcpy(m->ftab_temp->font, tx3g_ptr, font_length);
        m->ftab_temp->font[font_length] = '\0';
        av_dynarray_add(&m->ftab, &m->count_f, m->ftab_temp);
        if (!m->ftab) {
            mov_text_cleanup_ftab(m);
            return AVERROR(ENOMEM);
        }
        m->ftab_temp = ((void*)0);
        tx3g_ptr = tx3g_ptr + font_length;
    }
    for (i = 0; i < m->ftab_entries; i++) {
        if (style_fontID == m->ftab[i]->fontID)
            m->d.font = m->ftab[i]->font;
    }
    return 0;
}
