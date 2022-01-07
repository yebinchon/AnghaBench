
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {void* hlit_end; void* hlit_start; } ;
struct TYPE_5__ {TYPE_1__ h; int box_flags; } ;
typedef TYPE_2__ MovTextContext ;
typedef int AVPacket ;


 void* AV_RB16 (int const*) ;
 int HLIT_BOX ;

__attribute__((used)) static int decode_hlit(const uint8_t *tsmb, MovTextContext *m, AVPacket *avpkt)
{
    m->box_flags |= HLIT_BOX;
    m->h.hlit_start = AV_RB16(tsmb);
    tsmb += 2;
    m->h.hlit_end = AV_RB16(tsmb);
    tsmb += 2;
    return 0;
}
