
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int level; TYPE_2__* writer; scalar_t__ nb_section_frame; scalar_t__ nb_section_packet; scalar_t__ nb_section_packet_frame; TYPE_1__* sections; TYPE_1__** section; scalar_t__* nb_item; } ;
typedef TYPE_3__ WriterContext ;
struct TYPE_7__ {int (* print_section_header ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int id; } ;


 int SECTION_ID_NONE ;
 int SECTION_ID_PACKET ;
 int SECTION_ID_PACKETS_AND_FRAMES ;
 int SECTION_MAX_NB_LEVELS ;
 int av_assert0 (int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static inline void writer_print_section_header(WriterContext *wctx,
                                               int section_id)
{
    int parent_section_id;
    wctx->level++;
    av_assert0(wctx->level < SECTION_MAX_NB_LEVELS);
    parent_section_id = wctx->level ?
        (wctx->section[wctx->level-1])->id : SECTION_ID_NONE;

    wctx->nb_item[wctx->level] = 0;
    wctx->section[wctx->level] = &wctx->sections[section_id];

    if (section_id == SECTION_ID_PACKETS_AND_FRAMES) {
        wctx->nb_section_packet = wctx->nb_section_frame =
        wctx->nb_section_packet_frame = 0;
    } else if (parent_section_id == SECTION_ID_PACKETS_AND_FRAMES) {
        wctx->nb_section_packet_frame = section_id == SECTION_ID_PACKET ?
            wctx->nb_section_packet : wctx->nb_section_frame;
    }

    if (wctx->writer->print_section_header)
        wctx->writer->print_section_header(wctx);
}
