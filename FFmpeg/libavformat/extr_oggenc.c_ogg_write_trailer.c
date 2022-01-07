
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_11__ {TYPE_2__ page; } ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_3__ OGGStreamContext ;
typedef TYPE_4__ AVFormatContext ;


 int ogg_buffer_page (TYPE_4__*,TYPE_3__*) ;
 int ogg_write_pages (TYPE_4__*,int) ;

__attribute__((used)) static int ogg_write_trailer(AVFormatContext *s)
{
    int i;


    for (i = 0; i < s->nb_streams; i++) {
        OGGStreamContext *oggstream = s->streams[i]->priv_data;

        if (oggstream->page.size > 0)
            ogg_buffer_page(s, oggstream);
    }

    ogg_write_pages(s, 1);

    return 0;
}
