
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int start; int end; } ;
struct TYPE_5__ {int box_flags; TYPE_1__ hlit; int buffer; } ;
typedef TYPE_2__ MovTextContext ;


 int AV_RB32 (int*) ;
 int HLIT_BOX ;
 int av_bprint_append_any (int *,int*,int) ;

__attribute__((used)) static void encode_hlit(MovTextContext *s, uint32_t tsmb_type)
{
    uint32_t tsmb_size;
    if (s->box_flags & HLIT_BOX) {
        tsmb_size = 12;
        tsmb_size = AV_RB32(&tsmb_size);
        av_bprint_append_any(&s->buffer, &tsmb_size, 4);
        av_bprint_append_any(&s->buffer, &tsmb_type, 4);
        av_bprint_append_any(&s->buffer, &s->hlit.start, 2);
        av_bprint_append_any(&s->buffer, &s->hlit.end, 2);
    }
}
