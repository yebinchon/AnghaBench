
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* inflection_points; int inflection_points_count; TYPE_1__** steps; } ;
struct TYPE_4__ {scalar_t__ total_change; } ;
typedef TYPE_2__ OpusPsyContext ;



__attribute__((used)) static void search_for_change_points(OpusPsyContext *s, float tgt_change,
                                     int offset_s, int offset_e, int resolution,
                                     int level)
{
    int i;
    float c_change = 0.0f;
    if ((offset_e - offset_s) <= resolution)
        return;
    for (i = offset_s; i < offset_e; i++) {
        c_change += s->steps[i]->total_change;
        if (c_change > tgt_change)
            break;
    }
    if (i == offset_e)
        return;
    search_for_change_points(s, tgt_change / 2.0f, offset_s, i + 0, resolution, level + 1);
    s->inflection_points[s->inflection_points_count++] = i;
    search_for_change_points(s, tgt_change / 2.0f, i + 1, offset_e, resolution, level + 1);
}
