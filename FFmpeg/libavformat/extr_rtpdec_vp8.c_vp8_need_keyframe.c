
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sequence_ok; scalar_t__ sequence_dirty; } ;
typedef TYPE_1__ PayloadContext ;



__attribute__((used)) static int vp8_need_keyframe(PayloadContext *vp8)
{
    return vp8->sequence_dirty || !vp8->sequence_ok;
}
