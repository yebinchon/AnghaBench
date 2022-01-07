
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ picture_structure; scalar_t__ first_field; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ PICT_FRAME ;

__attribute__((used)) static inline int mpeg2_get_is_frame_start(const MpegEncContext *s)
{
    return s->first_field || s->picture_structure == PICT_FRAME;
}
