
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int granule; int start_granule; } ;
struct TYPE_16__ {TYPE_3__* priv_data; } ;
struct TYPE_15__ {TYPE_2__* page_list; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_8__ page; } ;
struct TYPE_13__ {int page_count; TYPE_8__ page; } ;
typedef TYPE_1__ OGGStreamContext ;
typedef TYPE_2__ OGGPageList ;
typedef TYPE_3__ OGGContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_mallocz (int) ;
 scalar_t__ ogg_compare_granule (TYPE_4__*,TYPE_8__*,TYPE_8__*) ;
 int ogg_granule_to_timestamp (TYPE_1__*,int ) ;
 int ogg_reset_cur_page (TYPE_1__*) ;

__attribute__((used)) static int ogg_buffer_page(AVFormatContext *s, OGGStreamContext *oggstream)
{
    OGGContext *ogg = s->priv_data;
    OGGPageList **p = &ogg->page_list;
    OGGPageList *l = av_mallocz(sizeof(*l));

    if (!l)
        return AVERROR(ENOMEM);
    l->page = oggstream->page;

    oggstream->page.start_granule = ogg_granule_to_timestamp(oggstream, oggstream->page.granule);
    oggstream->page_count++;
    ogg_reset_cur_page(oggstream);

    while (*p) {
        if (ogg_compare_granule(s, &(*p)->page, &l->page))
            break;
        p = &(*p)->next;
    }
    l->next = *p;
    *p = l;

    return 0;
}
