
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rows; int gb; } ;
typedef TYPE_1__ InterplayACMContext ;
typedef int GetBitContext ;


 int get_bits (int *,unsigned int) ;
 int set_pos (TYPE_1__*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int linear(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned int i;
    int b, middle = 1 << (ind - 1);

    for (i = 0; i < s->rows; i++) {
        b = get_bits(gb, ind);
        set_pos(s, i, col, b - middle);
    }
    return 0;
}
