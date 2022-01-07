
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pict_list_end; int pict_list; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AIFFOutputContext ;


 int ff_packet_list_free (int *,int *) ;

__attribute__((used)) static void aiff_deinit(AVFormatContext *s)
{
    AIFFOutputContext *aiff = s->priv_data;

    ff_packet_list_free(&aiff->pict_list, &aiff->pict_list_end);
}
