
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pict_type; } ;
struct TYPE_5__ {scalar_t__ fcm; scalar_t__ mv_mode; int mv_mode2; int p_frame_skipped; TYPE_1__ s; } ;
typedef TYPE_2__ VC1Context ;
typedef int VAMvModeVC1 ;


 scalar_t__ AV_PICTURE_TYPE_P ;
 scalar_t__ ILACE_FIELD ;
 scalar_t__ MV_PMODE_INTENSITY_COMP ;
 scalar_t__ PROGRESSIVE ;
 int get_VAMvModeVC1 (int ) ;

__attribute__((used)) static inline VAMvModeVC1 vc1_get_MVMODE2(const VC1Context *v)
{
    if ((v->fcm == PROGRESSIVE || v->fcm == ILACE_FIELD) &&
        (v->s.pict_type == AV_PICTURE_TYPE_P && !v->p_frame_skipped) &&
        v->mv_mode == MV_PMODE_INTENSITY_COMP)
        return get_VAMvModeVC1(v->mv_mode2);
    return 0;
}
