
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_3__** pps_list; int const* pps; } ;
typedef TYPE_1__ HEVCParamSets ;
typedef int HEVCPPS ;


 int av_buffer_unref (TYPE_3__**) ;

__attribute__((used)) static void remove_pps(HEVCParamSets *s, int id)
{
    if (s->pps_list[id] && s->pps == (const HEVCPPS*)s->pps_list[id]->data)
        s->pps = ((void*)0);
    av_buffer_unref(&s->pps_list[id]);
}
