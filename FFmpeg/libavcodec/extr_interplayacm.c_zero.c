
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rows; } ;
typedef TYPE_1__ InterplayACMContext ;


 int set_pos (TYPE_1__*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int zero(InterplayACMContext *s, unsigned ind, unsigned col)
{
    unsigned i;

    for (i = 0; i < s->rows; i++)
        set_pos(s, i, col, 0);
    return 0;
}
