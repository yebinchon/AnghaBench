
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pict_type; } ;
struct TYPE_5__ {scalar_t__ fcm; int bi_type; TYPE_1__ s; scalar_t__ dmb_is_raw; } ;
typedef TYPE_2__ VC1Context ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 scalar_t__ ILACE_FRAME ;
 scalar_t__ PROGRESSIVE ;

__attribute__((used)) static inline int vc1_has_DIRECTMB_bitplane(const VC1Context *v)
{
    if (v->dmb_is_raw)
        return 0;
    return (v->fcm == PROGRESSIVE || v->fcm == ILACE_FRAME) &&
           (v->s.pict_type == AV_PICTURE_TYPE_B && !v->bi_type);
}
