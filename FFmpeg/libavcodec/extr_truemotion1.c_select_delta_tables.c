
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int* ydt; int* cdt; int* fat_ydt; int* fat_cdt; } ;
typedef TYPE_1__ TrueMotion1Context ;


 int * cdts ;
 int * fat_cdts ;
 int * fat_ydts ;
 int memcpy (int*,int ,int) ;
 int * ydts ;

__attribute__((used)) static void select_delta_tables(TrueMotion1Context *s, int delta_table_index)
{
    int i;

    if (delta_table_index > 3)
        return;

    memcpy(s->ydt, ydts[delta_table_index], 8 * sizeof(int16_t));
    memcpy(s->cdt, cdts[delta_table_index], 8 * sizeof(int16_t));
    memcpy(s->fat_ydt, fat_ydts[delta_table_index], 8 * sizeof(int16_t));
    memcpy(s->fat_cdt, fat_cdts[delta_table_index], 8 * sizeof(int16_t));



    for (i = 0; i < 8; i++)
    {


        s->ydt[i] &= 0xFFFE;
        s->ydt[i] /= 2;
    }
}
