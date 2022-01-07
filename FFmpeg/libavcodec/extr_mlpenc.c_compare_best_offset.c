
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lsb_bits; } ;
typedef TYPE_1__ BestOffset ;



__attribute__((used)) static int compare_best_offset(BestOffset *prev, BestOffset *cur)
{
    if (prev->lsb_bits != cur->lsb_bits)
        return 1;

    return 0;
}
