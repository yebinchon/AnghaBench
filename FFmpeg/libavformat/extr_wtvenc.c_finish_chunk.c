
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nb_index; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ MAX_NB_INDEX ;
 int finish_chunk_noindex (TYPE_2__*) ;
 int write_index (TYPE_2__*) ;

__attribute__((used)) static void finish_chunk(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    finish_chunk_noindex(s);
    if (wctx->nb_index == MAX_NB_INDEX)
        write_index(s);
}
