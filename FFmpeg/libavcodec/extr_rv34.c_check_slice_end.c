
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ mb_y; scalar_t__ mb_height; int gb; int mb_num_left; } ;
struct TYPE_6__ {int mb_skip_run; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef TYPE_2__ RV34DecContext ;
typedef TYPE_3__ MpegEncContext ;


 int get_bits_left (int *) ;
 int show_bits (int *,int) ;

__attribute__((used)) static int check_slice_end(RV34DecContext *r, MpegEncContext *s)
{
    int bits;
    if(s->mb_y >= s->mb_height)
        return 1;
    if(!s->mb_num_left)
        return 1;
    if(r->s.mb_skip_run > 1)
        return 0;
    bits = get_bits_left(&s->gb);
    if(bits <= 0 || (bits < 8 && !show_bits(&s->gb, bits)))
        return 1;
    return 0;
}
