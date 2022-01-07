
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ original_duration; int edit_rate; int index_sid; } ;
typedef TYPE_1__ MXFTrack ;
typedef int MXFIndexTable ;
typedef int MXFContext ;


 scalar_t__ mxf_edit_unit_absolute_offset (int *,int *,int,int ,int *,int*,int *,int ) ;
 int * mxf_find_index_table (int *,int ) ;

__attribute__((used)) static int mxf_get_next_track_edit_unit(MXFContext *mxf, MXFTrack *track, int64_t current_offset, int64_t *edit_unit_out)
{
    int64_t a, b, m, offset;
    MXFIndexTable *t = mxf_find_index_table(mxf, track->index_sid);

    if (!t || track->original_duration <= 0)
        return -1;

    a = -1;
    b = track->original_duration;

    while (b - a > 1) {
        m = (a + b) >> 1;
        if (mxf_edit_unit_absolute_offset(mxf, t, m, track->edit_rate, ((void*)0), &offset, ((void*)0), 0) < 0)
            return -1;
        if (offset < current_offset)
            a = m;
        else
            b = m;
    }

    *edit_unit_out = b;

    return 0;
}
