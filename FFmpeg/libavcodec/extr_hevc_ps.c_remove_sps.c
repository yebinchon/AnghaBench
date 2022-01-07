
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
struct TYPE_8__ {int sps_id; } ;
struct TYPE_7__ {TYPE_5__** sps_list; int const* sps; TYPE_6__** pps_list; } ;
typedef int const HEVCSPS ;
typedef TYPE_1__ HEVCParamSets ;
typedef TYPE_2__ HEVCPPS ;


 int FF_ARRAY_ELEMS (TYPE_6__**) ;
 int av_assert0 (int) ;
 int av_buffer_unref (TYPE_5__**) ;
 int remove_pps (TYPE_1__*,int) ;

__attribute__((used)) static void remove_sps(HEVCParamSets *s, int id)
{
    int i;
    if (s->sps_list[id]) {
        if (s->sps == (const HEVCSPS*)s->sps_list[id]->data)
            s->sps = ((void*)0);


        for (i = 0; i < FF_ARRAY_ELEMS(s->pps_list); i++)
            if (s->pps_list[i] && ((HEVCPPS*)s->pps_list[i]->data)->sps_id == id)
                remove_pps(s, i);

        av_assert0(!(s->sps_list[id] && s->sps == (HEVCSPS*)s->sps_list[id]->data));
    }
    av_buffer_unref(&s->sps_list[id]);
}
