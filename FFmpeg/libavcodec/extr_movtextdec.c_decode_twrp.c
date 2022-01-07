
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int wrap_flag; } ;
struct TYPE_5__ {TYPE_1__ w; int box_flags; } ;
typedef TYPE_2__ MovTextContext ;
typedef int AVPacket ;


 int TWRP_BOX ;

__attribute__((used)) static int decode_twrp(const uint8_t *tsmb, MovTextContext *m, AVPacket *avpkt)
{
    m->box_flags |= TWRP_BOX;
    m->w.wrap_flag = *tsmb++;
    return 0;
}
