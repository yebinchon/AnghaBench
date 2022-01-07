
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_5__** vps_list; TYPE_6__** sps_list; int const* vps; } ;
struct TYPE_7__ {int vps_id; } ;
typedef int HEVCVPS ;
typedef TYPE_1__ HEVCSPS ;
typedef TYPE_2__ HEVCParamSets ;


 int FF_ARRAY_ELEMS (TYPE_6__**) ;
 int av_buffer_unref (TYPE_5__**) ;
 int remove_sps (TYPE_2__*,int) ;

__attribute__((used)) static void remove_vps(HEVCParamSets *s, int id)
{
    int i;
    if (s->vps_list[id]) {
        if (s->vps == (const HEVCVPS*)s->vps_list[id]->data)
            s->vps = ((void*)0);

        for (i = 0; i < FF_ARRAY_ELEMS(s->sps_list); i++)
            if (s->sps_list[i] && ((HEVCSPS*)s->sps_list[i]->data)->vps_id == id)
                remove_sps(s, i);
    }
    av_buffer_unref(&s->vps_list[id]);
}
