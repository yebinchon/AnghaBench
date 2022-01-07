
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int hlit_color; } ;
struct TYPE_5__ {TYPE_1__ c; int box_flags; } ;
typedef TYPE_2__ MovTextContext ;
typedef int AVPacket ;


 int HCLR_BOX ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int decode_hclr(const uint8_t *tsmb, MovTextContext *m, AVPacket *avpkt)
{
    m->box_flags |= HCLR_BOX;
    memcpy(m->c.hlit_color, tsmb, 4);
    tsmb += 4;
    return 0;
}
