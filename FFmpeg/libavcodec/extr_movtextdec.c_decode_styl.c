
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {void* style_end; } ;
struct TYPE_12__ {void* fontsize; void* style_flag; void* style_fontID; void* style_start; void* style_end; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_10__ {scalar_t__ tracksize; scalar_t__ size_var; int style_entries; int count_s; TYPE_8__** s; TYPE_6__* s_temp; int box_flags; } ;
typedef TYPE_1__ MovTextContext ;
typedef TYPE_2__ AVPacket ;


 int AVERROR (int ) ;
 void* AV_RB16 (int const*) ;
 void* AV_RB8 (int const*) ;
 int ENOMEM ;
 int STYL_BOX ;
 int av_dynarray_add (TYPE_8__***,int*,TYPE_6__*) ;
 int av_freep (TYPE_6__**) ;
 TYPE_6__* av_malloc (int) ;
 int mov_text_cleanup (TYPE_1__*) ;

__attribute__((used)) static int decode_styl(const uint8_t *tsmb, MovTextContext *m, AVPacket *avpkt)
{
    int i;
    int style_entries = AV_RB16(tsmb);
    tsmb += 2;

    if (m->tracksize + m->size_var + 2 + style_entries * 12 > avpkt->size)
        return -1;

    m->style_entries = style_entries;

    m->box_flags |= STYL_BOX;
    for(i = 0; i < m->style_entries; i++) {
        m->s_temp = av_malloc(sizeof(*m->s_temp));
        if (!m->s_temp) {
            mov_text_cleanup(m);
            return AVERROR(ENOMEM);
        }
        m->s_temp->style_start = AV_RB16(tsmb);
        tsmb += 2;
        m->s_temp->style_end = AV_RB16(tsmb);

        if ( m->s_temp->style_end < m->s_temp->style_start
            || (m->count_s && m->s_temp->style_start < m->s[m->count_s - 1]->style_end)) {
            av_freep(&m->s_temp);
            mov_text_cleanup(m);
            return AVERROR(ENOMEM);
        }

        tsmb += 2;
        m->s_temp->style_fontID = AV_RB16(tsmb);
        tsmb += 2;
        m->s_temp->style_flag = AV_RB8(tsmb);
        tsmb++;
        m->s_temp->fontsize = AV_RB8(tsmb);
        av_dynarray_add(&m->s, &m->count_s, m->s_temp);
        if(!m->s) {
            mov_text_cleanup(m);
            return AVERROR(ENOMEM);
        }
        tsmb++;

        tsmb += 4;
    }
    return 0;
}
