
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rows; int gb; } ;
typedef TYPE_1__ InterplayACMContext ;
typedef int GetBitContext ;


 unsigned int get_bits (int *,int) ;
 unsigned int get_bits1 (int *) ;
 int * map_3bit ;
 int set_pos (TYPE_1__*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int k44(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;

    for (i = 0; i < s->rows; i++) {
        b = get_bits1(gb);
        if (b == 0) {
            set_pos(s, i, col, 0);
            continue;
        }

        b = get_bits(gb, 3);
        set_pos(s, i, col, map_3bit[b]);
    }
    return 0;
}
