
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int granule; scalar_t__ size; scalar_t__ segments_count; scalar_t__ flags; } ;
struct TYPE_5__ {TYPE_1__ page; } ;
typedef TYPE_2__ OGGStreamContext ;



__attribute__((used)) static int ogg_reset_cur_page(OGGStreamContext *oggstream)
{
    oggstream->page.granule = -1;
    oggstream->page.flags = 0;
    oggstream->page.segments_count = 0;
    oggstream->page.size = 0;
    return 0;
}
