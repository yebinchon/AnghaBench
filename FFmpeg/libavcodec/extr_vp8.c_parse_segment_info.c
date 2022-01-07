
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* update_map; void** filter_level; void** base_quant; void* absolute_vals; void* update_feature_data; } ;
struct TYPE_7__ {TYPE_2__* prob; TYPE_1__ segmentation; int c; } ;
typedef TYPE_3__ VP8Context ;
typedef int VP56RangeCoder ;
struct TYPE_6__ {int* segmentid; } ;


 void* vp8_rac_get (int *) ;
 void* vp8_rac_get_sint (int *,int) ;
 int vp8_rac_get_uint (int *,int) ;

__attribute__((used)) static void parse_segment_info(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;
    int i;

    s->segmentation.update_map = vp8_rac_get(c);
    s->segmentation.update_feature_data = vp8_rac_get(c);

    if (s->segmentation.update_feature_data) {
        s->segmentation.absolute_vals = vp8_rac_get(c);

        for (i = 0; i < 4; i++)
            s->segmentation.base_quant[i] = vp8_rac_get_sint(c, 7);

        for (i = 0; i < 4; i++)
            s->segmentation.filter_level[i] = vp8_rac_get_sint(c, 6);
    }
    if (s->segmentation.update_map)
        for (i = 0; i < 3; i++)
            s->prob->segmentid[i] = vp8_rac_get(c) ? vp8_rac_get_uint(c, 8) : 255;
}
